import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  
  late final String text;
  // late final Function ontab;      // Not work --> creates error if uncommented
  // final VoidCallback? onTap;     // Not work --> creates error if uncommented

  AppBarTitle({required this.text, /*@required this.ontab*/});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0,), 
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            letterSpacing: 3.0,
            color: Color(0xffBAD0D0),
          ),
        ),
      ),
    );
  }
}