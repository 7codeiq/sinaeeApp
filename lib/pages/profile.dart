import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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

  final TextEditingController _date = TextEditingController();

  bool _obscureText = true;
  bool _obscureTextTow = true;
  bool _obscureTextThree = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF46D52),
        title: const Text(
          "الملف الشخصي ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFF46D52),
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ProfilePicture(
                    name: '',
                    radius: 100,
                    fontsize: 21,
                    tooltip: true,
                    img: data[index]['images'],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "أضافة صورة شخصية",
                    style: TextStyle(
                      color: Color(0xFFF46D52),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: screenWidth * 0.90,
                  child: TextFormField(
                    initialValue: data[index]['user_name'],
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
                const SizedBox(height: 5),
                SizedBox(
                  width: screenWidth * 0.90,
                  child: TextFormField(
                    initialValue: data[index]['phone'],
                    decoration: const InputDecoration(
                      hintText: "تغيير رقم الهاتف",
                      label: Text(
                        "تغيير رقم الهاتف",
                        style: TextStyle(color: Colors.black54),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFF46D52),
                          width: 0.5,
                        ),
                      ),
                      icon: Icon(
                        Icons.phone_android,
                        color: Color(0xFFF46D52),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.90,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "تغيير المواليد",
                      labelStyle: TextStyle(color: Colors.black54),
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
                    initialValue: data[index]['births'],
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050),
                      );
                      if (pickeddate != null) {
                        setState(() {
                          _date.text =
                              DateFormat('yyyy/MM/dd').format(pickeddate);
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.90,
                  child: TextFormField(
                    initialValue: data[index]['email'],
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
                  width: screenWidth * 0.90,
                  child: TextFormField(
                    initialValue: data[index]['password'],
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
                            color: Color(0xFFF46D52)),
                      ),
                      label: const Text(
                        "كلمة المرور القديمة",
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
                        "كلمة المرور الجديدة",
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
                    obscureText: _obscureTextTow,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.90,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureTextThree = !_obscureTextThree;
                          });
                        },
                        child: Icon(
                            _obscureTextThree
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFFF46D52)),
                      ),
                      label: const Text(
                        "اعد كتابة كلمة المرور الجديدة",
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
                    obscureText: _obscureTextThree,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                SizedBox(
                  width: screenWidth * 0.90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF46D52)),
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
          }),
    );
  }
}
