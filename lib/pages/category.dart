import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/catCall.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_page == 3) catCall(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        key: _bottomNavigationKey,
        index: 0,
        backgroundColor: Colors.transparent,
        color: const Color(0xFFF46D52),
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

