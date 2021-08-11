import 'package:emarket/screen/FAQs.dart';
import 'package:emarket/screen/bottmbar.dart';
import 'package:emarket/screen/changepassword.dart';
import 'package:emarket/screen/creatpassword.dart';
import 'package:emarket/screen/forgetpassword.dart';
import 'package:emarket/screen/login.dart';
import 'package:emarket/screen/profile2.dart';
import 'package:emarket/screen/rigester.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'appstore',
      routes: <String, WidgetBuilder>{
        '/Signin': (BuildContext context) => Signin(),
        '/SingUp': (BuildContext context) => SingUp(),
        '/Forgetpassword': (BuildContext context) => Forgetpassword(),
        '/Password': (BuildContext context) => Password(),
        '/prof': (BuildContext context) => prof(),
        '/BottomNavBar': (BuildContext context) => BottomNavBar(),
        // '/Payment': (BuildContext context) => Payment(),
        // '/Creat': (BuildContext context) => Creat(),
        // '/SideBar': (BuildContext context) => SideBar(),
        // '/MyOrdersPage': (BuildContext context) => MyOrdersPage(),
        // '/Faq': (BuildContext context) => Faq(),
        // '/Editpro': (BuildContext context) => Editpro(),
        // '/Home': (BuildContext context) => Home(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Password': (BuildContext context) => Password(),
        // '/Aboutas': (BuildContext context) => Aboutas(),
      },
      home: Creat(),
    );
  }
}
