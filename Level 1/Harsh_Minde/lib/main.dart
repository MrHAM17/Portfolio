import 'package:flutter/material.dart';
import 'package:harsh_minde/UI/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harsh Minde',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
