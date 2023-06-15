import 'package:flutter/material.dart';

class RecoveryPassowrd extends StatefulWidget {
  const RecoveryPassowrd({super.key});

  @override
  State<RecoveryPassowrd> createState() => _RecoveryPassowrdState();
}

class _RecoveryPassowrdState extends State<RecoveryPassowrd> {
  bool _obscureText = true;
  bool _obscureTextTow = true;
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
              "ادخل كلمة السر الجديدة ",
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
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFFF46D52)),
                      ),
                      label: const Text(
                        " ادخل كلمة المرور الجديدة",
                        style: TextStyle(color: Colors.black54),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF46D52),
                          width: 0.5,
                        ),
                      ),
                      hintText: " ادخل كلمة المرور الجديدة",
                      icon: const Icon(
                        Icons.lock,
                        color: Color(0xFFF46D52),
                      ),
                    ),
                    obscureText: _obscureText,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.90,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureTextTow = !_obscureTextTow;
                          });
                        },
                        child: Icon(
                            _obscureTextTow
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFFF46D52)),
                      ),
                      label: const Text(
                        "اعد ادخل كلمة المرور الجديدة",
                        style: TextStyle(color: Colors.black54),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF46D52),
                          width: 0.5,
                        ),
                      ),
                      hintText: "اعد ادخل كلمة المرور الجديدة",
                      icon: const Icon(
                        Icons.lock,
                        color: Color(0xFFF46D52),
                      ),
                    ),
                    obscureText: _obscureTextTow,
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
                            " لقد تم استرجاع الحساب بنجاح"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pushNamed(context, '/'),
                            child: const Text(
                              'تسجيل الدخول',
                              style: TextStyle(color: Color(0xFFF46D52)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'استرجاع الحساب',
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
