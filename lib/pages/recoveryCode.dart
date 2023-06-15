import 'package:flutter/material.dart';

class RecoveryCode extends StatefulWidget {
  const RecoveryCode({super.key});

  @override
  State<RecoveryCode> createState() => _RecoveryCodeState();
}

class _RecoveryCodeState extends State<RecoveryCode> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo.png",
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text(
              "هل نسيت كلمة السر ؟ ",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF46D52)),
            ),
            const Padding(padding: EdgeInsets.all(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.90,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password, color: Color(0xFFF46D52)),
                      hintText: 'ادخل رمز الاسترجاع',
                      label: Text(
                        "ادخل رمز الاسترداد",
                        style: TextStyle(color: Colors.black54),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF46D52),
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: screenWidth * 0.90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFF46D52),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("الرمز صحيح"),
                        content: const Text(
                            " الرجاء قم بانشاء كلمة سر جديدة"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pushNamed(context, 'recoverypassowrd'),
                            child: const Text(
                              'موافق',
                              style: TextStyle(color: Color(0xFFF46D52)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'التالي',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
