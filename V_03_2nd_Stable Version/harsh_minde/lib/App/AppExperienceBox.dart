import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomData.dart';

import '../constants/app_texts.dart';
class AppExperienceBox extends StatelessWidget {
  final Key? key; // Add a key parameter
  const AppExperienceBox({this.key}) : super(key: key); // Pass the key to the super constructor
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomData(
          title: AppTexts.experience_2Title,
          subTitle: AppTexts.experience_2Subtitle,
          duration: AppTexts.experience_2Duration,
          // key: UniqueKey(), // Provide a unique key
          // key: Key("DSADevelopmentCodeHelp"), // Example using a stable key
        ),
        CustomData(
          title: AppTexts.experience_1Title,
          subTitle: AppTexts.experience_1Subtitle,
          duration: AppTexts.experience_1Duration,
          // key: UniqueKey(), // Provide a unique key
          // key: Key("DSADevelopmentCodeHelp"), // Example using a stable key
        ),
        CustomData(
          title: AppTexts.educationTitle,
          subTitle: AppTexts.educationSubtitle,
          duration: AppTexts.educationDuration,
          // key: UniqueKey(), // Provide a unique key
          // key: Key("TernaEngineeringCollegeNerul"), // Example using a stable key
        ),
      ],
    );
  }
}