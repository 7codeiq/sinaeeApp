import 'package:flutter/material.dart';

class ForgotPassowrd extends StatefulWidget {
  const ForgotPassowrd({super.key});

  @override
  State<ForgotPassowrd> createState() => _ForgotPassowrdState();
}

class _ForgotPassowrdState extends State<ForgotPassowrd> {
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
                      icon: Icon(Icons.email, color: Color(0xFFF46D52)),
                      hintText: 'الايميل',
                      label: Text(
                        "ادخل الايميل",
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
                        title: Text("استرجاع كلمة المرور"),
                        content: const Text(
                            " لقد تم ارسال رمز الاسترداد الى ايميلك الرجاء قم بكتابته "),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pushNamed(context, 'recoverycode'),
                            child: const Text(
                              'ادخال رمز الاسترداد',
                              style: TextStyle(color: Color(0xFFF46D52)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'استرجاع كلمة السر',
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
