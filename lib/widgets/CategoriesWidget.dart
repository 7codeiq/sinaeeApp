import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<String> loadJsonData() async {
    return await rootBundle.loadString('data/categories.json');
  }

  Future<void> loadData() async {
    String jsonString = await loadJsonData();
    setState(() {
      data = jsonDecode(jsonString);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: data
            .map((item) => Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                item['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF292929),
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                item['image'],
                width: 40,
                height: 40,
              ),
            ],
          ),
        ))
            .toList(),
      ),
    );
  }
}
