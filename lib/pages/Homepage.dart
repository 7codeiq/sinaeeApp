import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/HomeCall.dart';
import '../widgets/catCall.dart';
import '../widgets/profileCall.dart';
import '../widgets/profileEditCall.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _page = 0;
  int item_page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_page == 0) const HomeCall(),
              if (_page == 1) const catCall(),
              if (_page == 2) const profileCall(),
              if (item_page == 34) const profileEditCall(),
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
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.square_grid_2x2,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
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