import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomData.dart';

// class WebExperienceBox extends StatelessWidget {
//   final Key? key;
//   final double titleFontSize;
//   final double subTitleFontSize;
//   final double durationFontSize;
//
//   WebExperienceBox({
//     this.key,
//     this.titleFontSize = 22.0,
//     this.subTitleFontSize = 13.0,
//     this.durationFontSize = 12.0,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CustomData(
//           key: Key("TernaEngineeringCollegeNerul"), // Example using a stable key
//           title: "Terna Engineering College, Nerul",
//           subTitle: "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Mumbai University",
//           duration: "2021 - Present",
//           titleFontSize: titleFontSize,
//           subTitleFontSize: subTitleFontSize,
//           durationFontSize: durationFontSize,
//         ),
//         CustomData(
//           key: Key("DSADevelopmentCodeHelp"), // Example using a stable key
//           title: "DSA-Development @ CodeHelp",
//           subTitle: "Completed @ ",
//           duration: "Dec - 2022 to Jul - 2023",
//           titleFontSize: titleFontSize,
//           subTitleFontSize: subTitleFontSize,
//           durationFontSize: durationFontSize,
//         ),
//       ],
//     );
//   }
// }






class WebExperienceBox extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomData(
        title: "Sandip Institute Of Engineering & Management Nashik",
        subTitle:
        "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
        duration: "2016 - Present",
      ),
      CustomData(
        title: "Flutter + Dart Development Winter Bootcamp",
        subTitle:
        "The Complete 2020 Flutter + Dart Winter Development Bootcamp at LCO Training Center,\nJaipur, Rajasthan (302017), Covering all the fundamental concepts for Flutter development",
        duration: "Dec - 2019 to Feb - 2020",
      ),
      CustomData(
        title:
        "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
        subTitle:
        "Flutter Developer and experienced programmer with an extensive history of designing and coding \nsolutions. Skilled in Google’s Flutter/Dart, Firebase App and Web development on a global scale. If you \nare looking for someone that you can trust that will complete your app on time and on budget, then \nplease contact me. I have been developing software for 1+ years and take pride in everything I do.",
        duration: "Oct - 2019 to Nov - 2020",
      ),
      CustomData(
        title: "Mentor at Contributor's Hack, 2020",
        subTitle:
        "Working as a mentor in HakinCode organization for Flutter CodeAsylums application \n where I can utilize my skills and be an asset to the organization",
        duration: "Sep 2020 - Oct 2020",
      ),
      CustomData(
        title: "Flutter Intern at Mind Sports League | Gurgaon In",
        subTitle:
        "Building world class Poker Learning platform. Poker Sports League is India’s first poker league is to sportify the game of poker through a unique, team based format",
        duration: "Nov - 2020 Present",
      ),
    ],
  );
}
}
