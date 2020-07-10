import 'package:flutter/material.dart';
import 'package:gf_demo/auth/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final routes = <String, WidgetBuilder>{
  //   HomePage.tag: (context) => HomePage(),
  //   Category.tag: (context) => Category(),
  //   Profile.tag: (context) => Profile(),
  // };
  // List ser = new List();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
