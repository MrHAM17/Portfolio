import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomData.dart';

import 'package:harsh_minde/Web/WebHome.dart';
import 'package:harsh_minde/App/AppHome.dart';

class AppExperienceBox extends StatelessWidget {
  final Key? key; // Add a key parameter
  AppExperienceBox({this.key}) : super(key: key); // Pass the key to the super constructor

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomData(
          title: "Terna Engineering College Nerul",
          subTitle:
          "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Mumbai University",
          duration: "2021 - Present",
          // key: UniqueKey(), // Provide a unique key
          // key: Key("TernaEngineeringCollegeNerul"), // Example using a stable key
        ),
        CustomData(
          title: "DSA-Development @ CodeHelp",
          subTitle:
          "Completed @ ",
          duration: "Dec - 2022 to Jul - 2023",
          // key: UniqueKey(), // Provide a unique key
          // key: Key("DSADevelopmentCodeHelp"), // Example using a stable key

        ),

      ],
    );
  }
}
