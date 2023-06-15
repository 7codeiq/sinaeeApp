import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class catCall extends StatefulWidget {
  const catCall({super.key});
  @override
  State<catCall> createState() => _catCallState();
}

class _catCallState extends State<catCall> {
  List data = [];
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
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "بحث عن مواد ",
                          hintStyle: TextStyle(),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      size: 30,
                      color: Color(0xFFF46D52),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              GridView.builder(
                gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pushNamed(context, "home");
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Color(0xFFF46D52),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: SizedBox(
                            width:screenWidth * 0.45,
                            height:screenWidth * 0.45,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Image.asset(
                                    data[index]['image'],
                                    width: screenWidth * 0.20,
                                    height: screenWidth * 0.20,
                                  ),
                                ),
                                ListTile(
                                  title: Text(data[index]['title'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
