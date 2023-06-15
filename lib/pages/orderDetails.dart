import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("تفاصيل الطلب"),
        backgroundColor: const Color(0xFFF46D52),
      ),
      body: ListView(
        children: [
          Image.asset("images/logo.png"),
          SizedBox(
            width: screenWidth * 0.90,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person, color: Color(0xFFF46D52)),
                hintText: 'الاسم',
                label: Text(
                  "الاسم",
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
          SizedBox(
            width: screenWidth * 0.90,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.location_on, color: Color(0xFFF46D52)),
                hintText: 'العنوان',
                label: Text(
                  "العنوان",
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
          SizedBox(
            width: screenWidth * 0.90,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.location_on, color: Color(0xFFF46D52)),
                hintText: 'اقرب نقطة دالة',
                label: Text(
                  "اقرب نقطة دالة",
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
          SizedBox(
            width: screenWidth * 0.90,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone_android, color: Color(0xFFF46D52)),
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
          SizedBox(
            width: screenWidth * 0.90,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone_android, color: Color(0xFFF46D52)),
                hintText: 'رقم الهاتف الثاني',
                label: Text(
                  "رقم الهاتف الثاني",
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
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "ألطلبات",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text("المجموع"),
                Spacer(),
                Text("20,000IQD"),
              ],
            ),
          ),
          const Divider(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text("خدمة التوصيل"),
                Spacer(),
                Text("5,000IQD"),
              ],
            ),
          ),
          const Divider(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text("قيمة الخصم"),
                Spacer(),
                Text("7,000IQD"),
              ],
            ),
          ),
          const Divider(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Text(
                    "المجموع الكلي", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF46D52)
                ),
                ),
                Spacer(),
                Text(
                    "32,000IQD",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF46D52)
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 5,
          ),
          const SizedBox(height: 50,),
          Column(
            children: [
              SizedBox(
                width: screenWidth * 0.90,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF46D52)
                  ),
                    onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: const Text("حاله الطلب"),
                            content: const Text("لقد تم ارسال طلبك بنجاح شكرا لزيارتكم"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pushNamed(context, 'requestsproducts'),
                                child: const Text('حالة الطلب',style: TextStyle(color: Color(0xFFF46D52)),),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pushNamed(context, 'home'),
                                child: const Text('الرجوع الى الصفحة الرئيسية',style: TextStyle(color: Color(0xFFF46D52)),),
                              ),
                            ],
                          );
                        },
                    );
                    },
                    child: const Text(
                        "ارسال الطلب",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),

                    ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
