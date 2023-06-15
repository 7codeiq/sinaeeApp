import 'package:flutter/material.dart';

class AskedQuestions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF46D52),
        title: const Text("الاسئلة المكررة", style: TextStyle(fontWeight: FontWeight.bold),)

      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Image.asset("images/logo.png"),
            const TextField(
              decoration: InputDecoration(
                label: Text("أبحث"),
                hintText: "أبحث عن مساعدة",
                icon: Icon(Icons.search),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                const SizedBox(height: 50,),
                const Text(
                    "معلومات عامة",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFF46D52)
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
                    'ماهي المنتجات المتوفرة على صناعي ؟',
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
                    'اين توجد صناعي ؟',
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
                    'ماهي المنتجات المتوفرة على صناعي ؟',
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
                    'ماهي اوقات عمل صناعي ؟',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF292929)),
                  ),
                ),
                const Divider(
                  height: 10,
                ),

                const SizedBox(height: 30,),
                const Text(
                  "الطلبات",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFF46D52)
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
                    'كيف استطيع تغيير طلبي ؟',
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
                    'كيف اقوم بالطلب ؟',
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
                    'كيف يمكنني الابلاغ عن مشاكل في الطلب ؟',
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
                    'ماهي كلفة التوصيل ؟',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF292929)),
                  ),
                ),
                const Divider(
                  height: 10,
                ),
                const SizedBox(height: 30,),
                const Text(
                  "ألاسئلة الشائعة",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFF46D52)
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
                    'ما هو تطبيق صناعي ؟',
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
                    'اين اجد الشروط والاحكام  ؟',
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
                    'ماهي سياسة الالغاء واسترداد الاموال ؟',
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
                    'هل يتضمن مجموع الطلب اكرامية السائق ؟',
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
          ],
        ),
      ),
    );
  }

}