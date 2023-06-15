import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("صفحة المساعدة", style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Color(0xFFF46D52),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "بماذا تحتاج مساعدة ؟",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF46D52),
            ),
            textAlign: TextAlign.center,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {

                },
                child: const Text(
                  'هل لديك مشكلة في التوصيل ؟',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF292929)),
                ),
              ),
              const Divider(
                height: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {

                },
                child: const Text(
                  'هل لديك مشكلة في طريقة الدفع ؟',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF292929)),
                ),
              ),
              const Divider(
                height: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {

                },
                child: const Text(
                  'هل لديك مشكلة في التطبيق ؟',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF292929)),
                ),
              ),
              const Divider(
                height: 10,
              ),
            ],
          ),

          Column(
            children: [
              Image.asset("images/logo.png"),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "هل تحتاج المزيد من المساعدة  ؟ ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF46D52),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height:30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFF46D52),
                ),
                onPressed: () {
                    Navigator.pushNamed(context, "contactus");
                },
                child: const Text(
                  'اتصل بنا',
                  style: TextStyle(fontWeight: FontWeight.bold,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
