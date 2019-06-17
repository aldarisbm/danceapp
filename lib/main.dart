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
        fontFamily: "B612",
        primaryColor: Colors.orange,
        accentColor: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
