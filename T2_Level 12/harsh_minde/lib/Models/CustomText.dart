import 'package:flutter/material.dart';

import 'package:harsh_minde/main.dart';


class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  CustomText({
    required this.text,
    required this.textsize,
    required this.color,
    this.letterSpacing,
    this.fontWeight,
    this.textAlign,
  });

  @override
  // Widget build(BuildContext context) {
  //   return Text(
  //     text,
  //     style: TextStyle(
  //       color: color,
  //       fontSize: textsize,
  //       letterSpacing: letterSpacing ?? 0.0,
  //       fontWeight: fontWeight ?? FontWeight.normal,
  //     ),
  //     textAlign: textAlign,
  //   );
  // }


  Widget build(BuildContext context) {
    return Text(
      text,
      // textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: textsize,
          letterSpacing: letterSpacing == null ? 0.10 : letterSpacing,
          fontWeight:fontWeight == null ? FontWeight.w400 :  fontWeight
      ),
    );
  }
}
