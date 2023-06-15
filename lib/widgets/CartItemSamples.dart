import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartItemSamples extends StatefulWidget {
  const CartItemSamples({super.key});


  @override
  State<StatefulWidget> createState() => _CartItemSamplesState();
}

class _CartItemSamplesState extends State<CartItemSamples> {
  List<dynamic> data = [];
  List<dynamic> additionalData = [];
  Map<int, int> counters = {};

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<String> loadJsonData(String fileName) async {
    return await rootBundle.loadString('data/$fileName');
  }

  Future<void> loadData() async {
    String ordersJsonString = await loadJsonData('cartitem.json');
    String additionalJsonString = await loadJsonData('product.json');

    List<dynamic> ordersData = jsonDecode(ordersJsonString);
    List<dynamic> additionalDataS = jsonDecode(additionalJsonString);

    setState(() {
      data = ordersData;
      additionalData = additionalDataS;
    });
  }

  String getColumnValueById(List<dynamic> data, int id, String columnName) {
    for (var item in data) {
      if (item['id'] == id) {
        return item[columnName];
      }
    }
    return ''; // Return a default value if the item is not found
  }

  String getImage(int productId, String value) {
    return getColumnValueById(additionalData, productId, value);
  }

  void _decrementItems(int id) {
    setState(() {
      counters[id] = (counters[id] ?? 0) > 0 ? counters[id]! - 1 : 0;
    });
  }

  void _incrementItems(int id) {
    setState(() {
      counters[id] = (counters[id] ?? 0) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        int productId = data[index]['id'];
        int counter = counters[productId] ?? 0;

        return Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                      height: screenWidth * 0.20,
                      width:  screenWidth * 0.20,
                      child: Image.asset(getImage(productId, 'images')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getImage(productId, 'title'),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF292929),
                          ),
                        ),
                        Text(
                          " ${getImage(productId, 'price')}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF46D52),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              width: 30,
                              height: 30,
                              child: IconButton(
                                icon: const Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                                onPressed: () => _decrementItems(productId),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "$counter",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF292929),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              width: 30,
                              height: 30,
                              child: IconButton(
                                icon: const Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                                onPressed: () => _incrementItems(productId),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    color: const Color(0xFFF46D52),
                    iconSize: 35,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
