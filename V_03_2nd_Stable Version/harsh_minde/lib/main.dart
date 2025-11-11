import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/Home.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harsh Minde',
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}