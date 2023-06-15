import 'package:flutter/material.dart';

class ContactUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF46D52),
        title: const Text("اتصل بنا",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ),
      body: ListView(
        children: [
          Image.asset("images/logo.png"),
          const Text(
            "نستقبل اتصالاتكم على الارقام والمواقع التالية",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF46D52),
            ),
            textAlign: TextAlign.center,
          ),
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Text(
                      "رقم الهاتف",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "07737172791",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Text(
                      "رقم الهاتف",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "07711643336",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Text(
                      "البريد الالكتروني",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "mortada.teach@outlook.com",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Text(
                      "الموقع الالكتروني",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "www.teach.com",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              SizedBox(
                height: 40,
              ),
              const Text(
                "او عبر مواقع التواصل الاجتماعي",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF46D52)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  size: 50,
                  color: Color(0xFF292929),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 20)),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.email,
                  size: 50,
                  color: Color(0xFF292929),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 20)),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.tiktok,
                  size: 50,
                  color: Color(0xFF292929),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 20)),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.snapchat,
                  size: 50,
                  color: Color(0xFF292929),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
