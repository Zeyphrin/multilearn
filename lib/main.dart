import 'package:flutter/material.dart';
import 'package:multlearn_course/pages/home_page/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage() 
    );
  }
}
