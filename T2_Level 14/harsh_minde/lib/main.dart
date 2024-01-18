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
      theme: ThemeData(
        primarySwatch: Colors.teal, // Choose a color that fits your style
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   // title: Text('Harsh Minde'),
        // ),
        body: Home(),
      ),
    );
  }
}
