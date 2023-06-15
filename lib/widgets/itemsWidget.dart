import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemsWidget extends StatefulWidget {
  
  const ItemsWidget({super.key});

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  List data = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<String> loadJsonData() async {
    return await rootBundle.loadString('data/product.json');
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
    return GridView.count(
        childAspectRatio: 0.68,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(data.length, (index) {
          return Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              width: screenWidth * 0.100,
              height: screenWidth * 0.100,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.favorite_border,
                        color: Color(0xFFF46D52),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF46D52),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "-50%",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "itemPage");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(
                        data[index]['images'],
                        width: screenWidth * 0.50,
                        height: screenWidth * 0.20,
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.99,
                    height: screenWidth * 0.10,
                    padding: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      data[index]['title'],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF46D52),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.99,
                    height: screenWidth * 0.10,
                    alignment: Alignment.centerRight,
                    child: Text(
                      data[index]['description'],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF292929),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data[index]['price'].toString(),
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF292929)),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart_checkout,
                            size: 30,
                            color: Color(0xFFF46D52),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
