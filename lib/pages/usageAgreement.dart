import 'package:flutter/material.dart';

class UsageAgreement extends StatelessWidget {
  const UsageAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF46D52),
        title: const Text(
            "اتفاقية الاستخدام",
            style: TextStyle(fontWeight: FontWeight.bold)
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/logo.png"),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "اولاً : قبول الاتفاقية",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF46D52),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "من خلال استخدامك لهذا الموقع، فهذا يشير الى موافقتك الكاملة على قبول جميع الشروط والأحكام الواردة هنا. يجب عدم استخدام هذا الموقع في حال كنت غير موافق على أي من هذه الشروط والأحكام القياسية. تم إنشاء الشروط والأحكام الخاصة بنا في نموذج الشروط والأحكام ونموذج سياسة الخصوصية",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 5,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "ثانياً : حقوق الملكية الفردية",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF46D52),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "جميع العلامات التجارية التي تعرض على ها الموقع هي ملك خاص له. وأيضا كافة المحتوى المعروض على هذا الموقع من صور وموسيقى ورسوم وغيرها هي ملك حصري للموقع لا يمكن استخدامها قبل الحصول على اذن من مالك الموقع نحن نقدم لك صلاحية تصفح الموقع واعادة استخدام بعض المحتوى لأغراض شخصية فقط ولا يجوز بأي شكل من الأشكال استخدام الموقع لأغراض تجارية أو دمج الموقع مع موقع أخر وفي حال قيام أحد الأشخاص أو المواقع بها فانه سيتعرض للمساءلة القانونية. ",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 5,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "ثالثاً : القيود",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF46D52),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "ان وصولك الى الموقع واستخدامك للمحتوى الخاص به يقع على مسؤوليك الخاصة. حيث أن المعلومات التي نقدمها هي لأغراض المعلومات العامة فقط. ويتم توفير جميع المعلومات على الموقع بحسن نية. ومع ذلك، فإننا لا نقدم أي تعهد أو ضمان من أي نوع، صريحًا أو ضمنيًا، فيما يتعلق بدقة أو كفاية أو صحة أو موثوقية أو توفر أو اكتمال أي معلومات على الموقع",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 5,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "رابعاً : أخلاء المسؤولية",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF46D52),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "ان وصولك الى الموقع واستخدامك للمحتوى الخاص به يقع على مسؤوليك الخاصة. حيث أن المعلومات التي نقدمها هي لأغراض المعلومات العامة فقط. ويتم توفير جميع المعلومات على الموقع بحسن نية. ومع ذلك، فإننا لا نقدم أي تعهد أو ضمان من أي نوع، صريحًا أو ضمنيًا، فيما يتعلق بدقة أو كفاية أو صحة أو موثوقية أو توفر أو اكتمال أي معلومات على الموقع",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
