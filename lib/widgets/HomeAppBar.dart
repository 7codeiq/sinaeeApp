import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

import 'navbar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavMenu()));
            },
            icon: const Icon(
              Icons.sort,
              textDirection: TextDirection.rtl,
              size: 35,
              color: Color(0xFFF46D52),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Text(
              "صناعي للمواد الانشائية",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF292929),
              ),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              padding: EdgeInsets.all(7),
              badgeColor: Color(0xFFF46D52),
            ),
            badgeContent: const Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: const Icon(Icons.shopping_bag_outlined,
                  size: 32, color: Color(0xFFF46D52)),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 10)),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              padding: EdgeInsets.all(7),
              badgeColor: Color(0xFFF46D52),
            ),
            badgeContent: const Text(
              "5",
              style: TextStyle(color: Colors.white),
            ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "notification");
                },
                child: const Icon(Icons.notifications,
                    size: 32, color: Color(0xFFF46D52)),
              ),
          ),
        ],
      ),
    );
  }
}
