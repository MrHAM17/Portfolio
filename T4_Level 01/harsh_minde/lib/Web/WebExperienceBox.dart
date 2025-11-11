import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomData.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_texts.dart';
class WebExperienceBox extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomData(
          title: AppTexts.experience_2Title,   // // If want to change Title  --> then also do changes in CustomData.dart for same.
          subTitle: AppTexts.experience_2Duration,
          duration: "",
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
          // "\nExploring diverse domains & venturing into new projects.",
          duration: AppTexts.educationDuration,
          // key: UniqueKey(), // Provide a unique key
          // key: Key("TernaEngineeringCollegeNerul"), // Example using a stable key
        ),
      ],
    );
  }
}