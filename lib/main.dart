import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practiceapp/card.dart';
import 'package:practiceapp/drawer.dart';
import 'package:practiceapp/pages/homepage.dart';
import 'package:practiceapp/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  TextEditingController _nameController = TextEditingController();
  var change_pic = ["assets/a.jpg", "assets/b.jpg"];

  var mytext = "chamge me";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: {
        "/login": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
      },
    );
  }
}
