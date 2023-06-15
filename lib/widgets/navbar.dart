import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavMenu extends StatefulWidget {
  const NavMenu({Key? key}) : super(key: key);

  @override
  State<NavMenu> createState() => _NavMenuState();
}

class _NavMenuState extends State<NavMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF46D52),
        foregroundColor: Colors.white,
        title: const Text(
          "القائمة",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF)),
        ),
      ),
      body: ListView(
        children:  [
          Image.asset(
            "images/logo.png"
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, bottom: 16),
            child: Text(
              "شريط القوائم",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black),
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
            onTap: (){
              Navigator.pushNamed(context, "contactus");
            },
            leading: const Icon(
                Icons.call,
    color: Color(0xFFF46D52),
    size:30,
            ),
            title: const Text("اتصل بنا", style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Divider(
              color: Colors.black54,
              height: 1,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "infoapp");
            },
            leading: const Icon(
              Icons.app_blocking,
              color: Color(0xFFF46D52),
              size:30,
            ),
            title: const Text("عن التطبيق", style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Divider(
              color: Colors.black54,
              height: 1,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "askedquestions");
            },
            leading: const Icon(
              Icons.question_mark_outlined,
              color: Color(0xFFF46D52),
              size:30,
            ),
            title: const Text("الاسئلة المتكررة", style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Divider(
              color: Colors.black54,
              height: 1,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "usageagreement");
            },
            leading: const Icon(
              Icons.check_circle,
              color: Color(0xFFF46D52),
              size:30,
            ),
            title: const Text("اتفاقية الاستخدام", style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Divider(
              color: Colors.black54,
              height: 1,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
            leading: const Icon(
              Icons.login,
              color: Color(0xFFF46D52),
              size:30,
            ),
            title: const Text("تسجيل الخروج", style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
