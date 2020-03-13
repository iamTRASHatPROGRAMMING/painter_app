import 'package:flutter/material.dart';
//import 'src/HomePage.dart';
//import 'package:device_info/device_info.dart';
import 'testFile.dart';
import 'mypaint.dart';
//import 'test';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPaint(),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}
