

//                              <<<<<<<  ---------------------      Below is code no. 1   ---------------------      >>>>>>>>>>



// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class MobileWork extends StatefulWidget {
//   @override
//   _MobileWorkState createState() => _MobileWorkState();
// }
//
// class _MobileWorkState extends State<MobileWork> {
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return ConstrainedBox(
//       constraints: BoxConstraints.tightFor(
//         width: size.width,
//         height: size.height * 1.7,
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: size.height * 0.07,
//           ),
//           Row(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: Container(
//                   height: size.height * 1.2,
//                   child: Stack(
//                     children: [
//                       Center(
//                         child: VerticalDivider(
//                           color: Color(0xff64FFDA),
//                           thickness: 1.75,
//                           width: 10,
//                           indent: 10,
//                           endIndent: 10,
//                         ),
//                       ),
//                       Container(
//                         child: Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               CircleAvatar(
//                                 backgroundColor: Colors.pink,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.laptopHouse,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: Colors.red,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.freeCodeCamp,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: Colors.brown,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.laptopCode,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: Colors.deepOrange,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.coffee,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: Colors.deepPurple,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.dev,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 4,
//                 child: Container(
//                   height: size.height * 1.7,
//                   // Replace 'MobileWork()' with the actual content widget
//                   child: MobileWorkContent(),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // Define your content widget here
// class MobileWorkContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Implement the content widget as needed
//     return Container();
//   }
// }



















//                              <<<<<<<  ---------------------      Below is code no. 2   ---------------------      >>>>>>>>>>
// better than 1st

















//
//
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import 'package:harsh_minde/App/AppExperience.dart';
// import 'package:harsh_minde/App/AppExperienceBox.dart';
// import 'package:harsh_minde/App/AppProject.dart';
//
// class AppExperience extends StatefulWidget {
//   @override
//   _AppExperienceState createState() => _AppExperienceState();
// }
//
// class _AppExperienceState extends State<AppExperience> {
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return ConstrainedBox(
//       constraints: BoxConstraints.tightFor(
//         width: size.width,
//         height: size.height * 1.7,
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: size.height * 0.07,
//           ),
//           Row(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: Container(
//                   height: size.height * 1.2,
//                   child: Stack(
//                     children: [
//                       Center(
//                         child: VerticalDivider(
//                           color: Color(0xff64FFDA),
//                           thickness: 1.75,
//                           width: 10,
//                           indent: 10,
//                           endIndent: 10,
//                         ),
//                       ),
//                       Container(
//                         child: Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               CircleAvatar(
//                                 backgroundColor: Colors.pink,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.laptopHouse,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: Colors.red,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.freeCodeCamp,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: Colors.brown,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.laptopCode,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: Colors.deepOrange,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.coffee,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: Colors.deepPurple,
//                                 child: FaIcon(
//                                   FontAwesomeIcons.dev,
//                                   color: Colors.white,
//                                 ),
//                                ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 4,
//                 child: Container(
//                   height: size.height * 1.7,
//                   child: AppExperienceBox(),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

















//                              <<<<<<<  ---------------------      Below is code no. 3   ---------------------      >>>>>>>>>>
// better than 2nd


















//
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import 'package:harsh_minde/App/AppExperience.dart';
// import 'package:harsh_minde/App/AppExperienceBox.dart';
// import 'package:harsh_minde/App/AppProject.dart';
//
// class AppExperience extends StatefulWidget {
//   @override
//   _AppExperienceState createState() => _AppExperienceState();
// }
//
// class _AppExperienceState extends State<AppExperience> {
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return ConstrainedBox(
//       constraints: BoxConstraints.tightFor(
//         width: size.width,
//         height: size.height * 1.7,
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: size.height * 0.07,
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     height: size.height * 1.2,
//                     child: Stack(
//                       children: [
//                         Center(
//                           child: VerticalDivider(
//                             color: Color(0xff64FFDA),
//                             thickness: 1.75,
//                             width: 10,
//                             indent: 10,
//                             endIndent: 10,
//                           ),
//                         ),
//                         Container(
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 // CircleAvatar(
//                                 //   backgroundColor: Colors.pink,
//                                 //   child: FaIcon(
//                                 //     FontAwesomeIcons.laptopHouse,
//                                 //     color: Colors.white,
//                                 //   ),
//                                 // ),
//                                 // CircleAvatar(
//                                 //   backgroundColor: Colors.red,
//                                 //   child: FaIcon(
//                                 //     FontAwesomeIcons.freeCodeCamp,
//                                 //     color: Colors.white,
//                                 //   ),
//                                 // ),
//                                 // CircleAvatar(
//                                 //   backgroundColor: Colors.brown,
//                                 //   child: FaIcon(
//                                 //     FontAwesomeIcons.laptopCode,
//                                 //     color: Colors.white,
//                                 //   ),
//                                 // ),
//                                 // CircleAvatar(
//                                 //   backgroundColor: Colors.deepOrange,
//                                 //   child: FaIcon(
//                                 //     FontAwesomeIcons.coffee,
//                                 //     color: Colors.white,
//                                 //   ),
//                                 // ),
//                                 // CircleAvatar(
//                                 //   backgroundColor: Colors.deepPurple,
//                                 //   child: FaIcon(
//                                 //     FontAwesomeIcons.dev,
//                                 //     color: Colors.white,
//                                 //   ),
//                                 // ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 4,
//                   child: Container(
//                     height: size.height * 1.7,
//                     child: AppExperienceBox(),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:harsh_minde/App/AppExperienceBox.dart';

class AppExperience extends StatefulWidget {
  @override
  _AppExperienceState createState() => _AppExperienceState();
}

class _AppExperienceState extends State<AppExperience> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.7,
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: size.height * 1.2,
                  child: Stack(
                    children: [
                      Center(
                        child: VerticalDivider(
                          color: Color(0xff64FFDA),
                          thickness: 1.75,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.pink,
                                child: FaIcon(
                                  FontAwesomeIcons.laptopHouse,
                                  color: Colors.white,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                child: FaIcon(
                                  FontAwesomeIcons.freeCodeCamp,
                                  color: Colors.white,
                                ),
                              ),
                              // CircleAvatar(
                              //   backgroundColor: Colors.brown,
                              //   child: FaIcon(
                              //     FontAwesomeIcons.laptopCode,
                              //     color: Colors.white,
                              //   ),
                              // ),
                              // CircleAvatar(
                              //   backgroundColor: Colors.deepOrange,
                              //   child: FaIcon(
                              //     FontAwesomeIcons.coffee,
                              //     color: Colors.white,
                              //   ),
                              // ),
                              // CircleAvatar(
                              //   backgroundColor: Colors.deepPurple,
                              //   child: FaIcon(
                              //     FontAwesomeIcons.dev,
                              //     color: Colors.white,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                // child: AppExperienceBox(),
                  child: Container(
                    height: size.height * 1.2,
                    child: AppExperienceBox(),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}






