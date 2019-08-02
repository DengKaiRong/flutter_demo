import 'package:flutter/material.dart';
import 'view/listview_demo.dart';
import 'view/home_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        highlightColor: Colors.transparent,
      ),
      home: Home(),
    );
  }
}
