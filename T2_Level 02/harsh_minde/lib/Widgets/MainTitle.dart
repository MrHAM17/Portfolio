import 'package:flutter/material.dart';

import 'package:harsh_minde/Widgets/CustomText.dart';
import 'package:harsh_minde/Widgets/CustomText.dart';

class MainTiitle extends StatelessWidget {
  final String number, text;
  MainTiitle({required this.number, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: number,
          textsize: 20.0,
          color: Color(0xff61F9D5),   // gives color --> numbers on of
          // color: Color(0xFFFCF200),

          fontWeight: FontWeight.w700,
        ),
        SizedBox(
          width: 12.0,
        ),
        CustomText(
          text: text,
          textsize: 26.0,
          color: Color(0xffCCD6F6),
          fontWeight: FontWeight.w700,
        ),
        SizedBox(
          width: 26.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 0.75,
          color: Color(0xff303C55),
        ),
      ],
    );
  }
}
