import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RequestsProducts extends StatefulWidget {
  const RequestsProducts({Key? key}) : super(key: key);

  @override
  State<RequestsProducts> createState() => _RequestsProductsState();
}

class _RequestsProductsState extends State<RequestsProducts> {
  List<dynamic> data = [];
  List<dynamic> additionalData = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<String> loadJsonData(String fileName) async {
    return await rootBundle.loadString('data/$fileName');
  }

  Future<void> loadData() async {
    String ordersJsonString = await loadJsonData('orders.json');
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
    return '';
  }
  String getImage(int productId, value) {
    return getColumnValueById(additionalData, productId, value);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF46D52),
        title: const Text("طلباتي"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          int productId = data[index]['id'];

          return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      getImage(productId, 'images'),
                      width: screenWidth * 0.15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(getImage(productId, 'title'),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xFFF46D52)),
                        ),

                        Text(
                          " السعر : ${getImage(productId, 'price')}",
                          style: const TextStyle(
                              fontSize: 14, ),
                        ),
                        Text(
                          "التاريخ : ${data[index]['date']}",
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "العدد : ${data[index]['qty']}",
                            style: const TextStyle(
                                fontSize: 14,fontWeight: FontWeight.bold ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: 100,
                          height: 35,
                          decoration: BoxDecoration(
                            color: data[index]['status'] == 1
                                ? Colors.yellow
                                : Colors.green,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15,top: 3),
                            child: Text(
                              " ${data[index]["status"] == 1 ? "قيد التجهيز" : "تم التوصيل"}",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: data[index]["status"] == 1
                                      ? Colors.black
                                      : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider( height:5, thickness: 2,)
            ],
          );
        },
      ),
    );
  }
}
