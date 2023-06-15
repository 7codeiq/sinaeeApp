import 'package:flutter/material.dart';
import 'package:shopping/pages/CartPage.dart';
import 'package:shopping/pages/Forgotpassword.dart';
import 'package:shopping/pages/Homepage.dart';
import 'package:shopping/pages/askedQuestions.dart';
import 'package:shopping/pages/category.dart';
import 'package:shopping/pages/contactUS.dart';
import 'package:shopping/pages/favoritePage.dart';
import 'package:shopping/pages/helpPage.dart';
import 'package:shopping/pages/infoApp.dart';
import 'package:shopping/pages/itemPage.dart';
import 'package:shopping/pages/newpasswordRecovery.dart';
import 'package:shopping/pages/notificationsPage.dart';
import 'package:shopping/pages/orderDetails.dart';
import 'package:shopping/pages/profile.dart';
import 'package:shopping/pages/recoveryCode.dart';
import 'package:shopping/pages/register.dart';
import 'package:shopping/pages/requestsProducts.dart';
import 'package:shopping/pages/sign-in.dart';
import 'package:shopping/pages/usageAgreement.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Cairo'
      ),
      routes: {
       "/" : (context) => Signin(),
        "home" : (context) => HomePage(),
        "category" : (context) => Category(),
        "register" : (context) => Register(),
        "cartPage" : (context) => CartPage(),
        "itemPage" : (context) => itemPage(),
        "profile" : (context) => Profile(),
        "help" : (context) => HelpPage(),
        "notification" : (context) => NotificationsPage(),
        "contactus" : (context) => ContactUS(),
        "favorite" : (context) => FavoritePage(),
        "infoapp" : (context) => InfoApp(),
        "askedquestions" : (context) => AskedQuestions(),
        "usageagreement" : (context) => UsageAgreement(),
        "orderdetails" : (context) => OrderDetails(),
        "forgotpassowrd" : (context) => ForgotPassowrd(),
        "recoverycode" : (context) => RecoveryCode(),
        "requestsproducts" : (context) => RequestsProducts(),
        "recoverypassowrd" : (context) => RecoveryPassowrd(),
        },
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('ar', ''), // Arabic
      ],
        locale: const Locale('ar', ''), // default rtl
    );
  }
}

