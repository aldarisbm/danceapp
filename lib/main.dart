import 'package:dancr/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "dancr",
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "Montserrat",
        primaryColor: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
