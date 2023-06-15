import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class profileCall extends StatefulWidget {
  const profileCall({super.key});

  @override
  State<profileCall> createState() => _profileCallState();
}

class _profileCallState extends State<profileCall> {
  List data = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<String> loadJsonData() async {
    return await rootBundle.loadString('data/users.json');
  }

  Future<void> loadData() async {
    String jsonString = await loadJsonData();
    setState(() {
      data = jsonDecode(jsonString);
    });
  }

  int item_page = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color(0xFFF46D52),
                    width: 2,
                    style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child:  ProfilePicture(
                name: '',
                radius: 100,
                fontsize: 21,
                tooltip: true,
                img: data[index]['images'],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             Text(
              data[index]['user_name'],
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
             Text(data[index]['email'],
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF46D52)
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "favorite");
              },
              leading: const Icon(
                Icons.favorite,
                color: Color(0xFFF46D52),
                size: 30,
              ),
              title: const Text(
                "مفضلاتي",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Divider(
                color: Colors.black54,
                height: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "requestsproducts");
              },
              leading: const Icon(
                Icons.shopping_bag,
                color: Color(0xFFF46D52),
                size: 30,
              ),
              title: const Text(
                "طلباتي",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Divider(
                color: Colors.black54,
                height: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "help");
              },
              leading: const Icon(
                Icons.sports_handball,
                color: Color(0xFFF46D52),
                size: 30,
              ),
              title: const Text(
                "المساعدة",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Divider(
                color: Colors.black54,
                height: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "profile");
              },
              leading: const Icon(
                Icons.person_pin,
                color: Color(0xFFF46D52),
                size: 30,
              ),
              title: const Text(
                "تعديل الملف الشخصي",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Divider(
                color: Colors.black54,
                height: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              leading: const Icon(
                Icons.logout,
                color: Color(0xFFF46D52),
                size: 30,
              ),
              title: const Text(
                "تسجيل الخروج",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        );
      }
    );
  }
}
