import 'package:flutter/material.dart';

import 'package:harsh_minde/Screens/About.dart';
import 'package:harsh_minde/Screens/HomeApp.dart';
import 'package:harsh_minde/Screens/HomeWeb.dart';



class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
