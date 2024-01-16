import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomData.dart';

class WebExperienceBox extends StatelessWidget {
  final Key? key;
  final double titleFontSize;
  final double subTitleFontSize;
  final double durationFontSize;

  WebExperienceBox({
    this.key,
    this.titleFontSize = 22.0,
    this.subTitleFontSize = 13.0,
    this.durationFontSize = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomData(
          key: Key("TernaEngineeringCollegeNerul"), // Example using a stable key
          title: "Terna Engineering College, Nerul",
          subTitle: "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Mumbai University",
          duration: "2021 - Present",
          titleFontSize: titleFontSize,
          subTitleFontSize: subTitleFontSize,
          durationFontSize: durationFontSize,
        ),
        CustomData(
          key: Key("DSADevelopmentCodeHelp"), // Example using a stable key
          title: "DSA-Development @ CodeHelp",
          subTitle: "Completed @ ",
          duration: "Dec - 2022 to Jul - 2023",
          titleFontSize: titleFontSize,
          subTitleFontSize: subTitleFontSize,
          durationFontSize: durationFontSize,
        ),
      ],
    );
  }
}
