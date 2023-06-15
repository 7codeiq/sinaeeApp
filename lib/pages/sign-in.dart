import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _obscureText = true;

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
            const Padding(padding: EdgeInsets.only(bottom: 55)),
            const Text(
              "تسجيل الدخول",
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
                        "الايميل",
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
            const Padding(padding: EdgeInsets.all(5)),
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
                        "كلمة المرور",
                        style: TextStyle(color: Colors.black54),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF46D52),
                          width: 0.5,
                        ),
                      ),
                      hintText: "كلمة المرور",
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
            const Padding(padding: EdgeInsets.all(15)),
            SizedBox(
              height: 50,
              width: screenWidth * 0.90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFF46D52),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "home");
                },
                child: const Text(
                  'تسجيل الدخول',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            TextButton(
              child: const Text(
                'هل نسيت كلمة السر ؟',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w300),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "forgotpassowrd");
              },
            ),
            const Padding(padding: EdgeInsets.all(15)),
            SizedBox(
              height: 50,
              width: screenWidth * 0.90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFF46D52),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "register");
                },
                child: const Text(
                  'أنشاء حساب',
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
