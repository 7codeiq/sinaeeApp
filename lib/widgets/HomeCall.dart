import 'package:flutter/material.dart';
import 'CategoriesWidget.dart';
import 'itemsWidget.dart';

class HomeCall extends StatelessWidget {
  const HomeCall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              // Categories
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                child: const Text(
                  "الفئات ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF292929),
                  ),
                ),
              ),
              // Categories Widget
              const CategoriesWidget(),
              // Item
              Container(
                alignment: Alignment.centerRight,
                margin:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: const Text(
                  "الاكثر مبيعاً ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF292929),
                  ),
                ),
              ),
              // Item Widget
              const ItemsWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
