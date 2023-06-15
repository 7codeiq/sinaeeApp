import 'package:flutter/material.dart';


class profileEditCall extends StatelessWidget {
  const profileEditCall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: const Color(0xFFF46D52),
              image:
              const DecorationImage(image: AssetImage("images/logo.png")),
              borderRadius: BorderRadius.circular(150)),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 400,
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: "الاسم",
              label: Text(
                "تغيير الاسم",
                style: TextStyle(color: Colors.black54),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFF46D52),
                  width: 0.5,
                ),
              ),
              icon: Icon(
                Icons.person,
                color: Color(0xFFF46D52),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 400,
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                "تغيير المواليد",
                style: TextStyle(color: Colors.black54),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFF46D52),
                  width: 0.5,
                ),
              ),
              hintText: "المواليد",
              icon: Icon(
                Icons.date_range,
                color: Color(0xFFF46D52),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 400,
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                "تغيير البريد الالكتروني",
                style: TextStyle(color: Colors.black54),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFF46D52),
                  width: 0.5,
                ),
              ),
              hintText: "البريد الالكتروني",
              icon: Icon(
                Icons.email,
                color: Color(0xFFF46D52),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 400,
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                "كلمة المرور القديمة",
                style: TextStyle(color: Colors.black54),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFF46D52),
                  width: 0.5,
                ),
              ),
              hintText: "كلمة المرور",
              icon: Icon(
                Icons.lock,
                color: Color(0xFFF46D52),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 400,
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                "كلمة المرور الجديدة",
                style: TextStyle(color: Colors.black54),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFF46D52),
                  width: 0.5,
                ),
              ),
              hintText: "كلمة المرور",
              icon: Icon(
                Icons.lock,
                color: Color(0xFFF46D52),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 400,
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                "اعد كتابة كلمة المرور الجديدة",
                style: TextStyle(color: Colors.black54),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFF46D52),
                  width: 0.5,
                ),
              ),
              hintText: "كلمة المرور",
              icon: Icon(
                Icons.lock,
                color: Color(0xFFF46D52),
              ),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(15)),
        SizedBox(
          width: 400,
          child: ElevatedButton(
            style:
            ElevatedButton.styleFrom(backgroundColor: Color(0xFFF46D52)),
            onPressed: () {},
            child: const Text(
              "حفظ التغييرات",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
