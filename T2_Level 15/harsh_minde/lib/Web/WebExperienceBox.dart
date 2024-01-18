import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomData.dart';

class WebExperienceBox extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomData(
          title: "\nBachelor of Technology -\nComputer En gineering",
          subTitle:
          "Currently in third year of my Bachelor's program, at Terna engineering College Nerul, New Mumbai."
          "\nAffiliated to University of Mumbai.",
          // "\nExploring diverse domains & venturing into new projects.",
          duration: "2021 - 2025",
          // key: UniqueKey(), // Provide a unique key
          // key: Key("TernaEngineeringCollegeNerul"), // Example using a stable key
        ),
        CustomData(
          title: "\nGrowth Hacker Intern -\nYounity.in",
          subTitle:
          "I delved into realms of analytics, strategic thinking, growth hacking, product marketing & digital marketing.",
          duration: "Apr 2022 - Jun 2022\n",
          // key: UniqueKey(), // Provide a unique key
          // key: Key("DSADevelopmentCodeHelp"), // Example using a stable key

        ),
        CustomData(
          title: "\nPartner -\nAppsilon Inc.",
          subTitle:
          "https://appsilon-website-9546d.web.app/#/",
          duration: "Aug 2023 - Present",
          // key: UniqueKey(), // Provide a unique key
          // key: Key("DSADevelopmentCodeHelp"), // Example using a stable key

        ),
        // CustomData(
        //   title: "DSA & CS Fundamentals Mastery",
        //   subTitle:
        //   "Completed an extensive course by renowned educator Love Babbar & Lakshay Kumar."
        //   "\nThe structured curriculum provided comprehensive knowledge, enhancing my analytical and problem-solving skills."
        //   "\nExcited to leverage these skills in real-world tech challenges.",
        //   duration: "Dec 2022 - Jul 2023",
        //
        //   // key: UniqueKey(), // Provide a unique key
        //   // key: Key("TernaEngineeringCollegeNerul"), // Example using a stable key
        // ),
        // CustomData(
        //   title: "Exciting things ahead!",
        //   subTitle: "Stay tuned for exciting updates as my journey in the world of technology continues to unfold.",
        //   duration: "",
        //   // key: UniqueKey(), // Provide a unique key
        //   // key: Key("TernaEngineeringCollegeNerul"), // Example using a stable key
        // ),

      ],
  );
}
}












