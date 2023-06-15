import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureText = true;
  bool _obscureTextTow = true;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            "images/logo.png",
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "تسجيل الحساب",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF46D52)),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(15)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.90,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFFF46D52),
                        ),
                        hintText: 'الاسم ',
                        label: Text(
                          "ادخل الاسم",
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
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.phone_android,
                          color: Color(0xFFF46D52),
                        ),
                        hintText: 'رقم الهاتف',
                        label: Text(
                          "رقم الهاتف",
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
                      decoration: const InputDecoration(
                        hintText: 'البريد الالكتروني',
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFF46D52),
                        ),
                        label: Text(
                          "البريد الالكتروني",
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
                          "تأكيد كلمة المرور",
                          style: TextStyle(color: Colors.black54),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFF46D52),
                            width: 0.5,
                          ),
                        ),
                        hintText: "تأكيد كلمة المرور",
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
            ],
          ),
          const Padding(padding: EdgeInsets.all(20)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
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
                        title: const Text("تسجيل الحساب"),
                        content: const Text("لقد تم تسجيل حسابك بنجاح الرجاء قم بتسجيل الدخول"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/'),
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
                  'تسجيل الحساب',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(15)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: screenWidth * 0.90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFF46D52),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: const Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              const Padding(padding: EdgeInsets.all(20)),
              const Text(
                " ... التسجيل باستخدام ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF292929)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.facebook,
                          color: Color(0xFFF46D52),
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.email,
                          color: Color(0xFFF46D52),
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tiktok,
                          color: Color(0xFFF46D52),
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.snapchat,
                          color: Color(0xFFF46D52),
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
