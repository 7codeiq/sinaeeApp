import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
    String ordersJsonString = await loadJsonData('favorites.json');
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
        title: const Text(
          "المفضلات",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),),
            child: Column(
              children: [
                GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    int productId = data[index]['id'];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
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
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "itemPage");
                                },
                                child: Image.asset(
                                  getImage(productId, 'images'),
                                  height: screenWidth * 0.10,
                                  width: screenWidth * 0.20,
                                ),
                              ),

                              Text(
                                getImage(productId, 'title'),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF46D52),
                                ),
                              ),
                              Text(
                                getImage(productId, 'description'),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF292929),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  getImage(productId, 'price'),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF292929),
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.shopping_cart_checkout,
                                    color: Color(0xFFF46D52),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}