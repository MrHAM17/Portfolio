import 'package:flutter/material.dart';
import 'package:harsh_minde/Screens/About.dart';
import 'package:harsh_minde/Screens/HomeApp.dart';
import 'package:harsh_minde/Screens/HomeWeb.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return HomeApp();
        } else {
          return HomeWeb();
        }
      },
    );
  }
}
