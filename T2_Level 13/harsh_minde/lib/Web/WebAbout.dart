


// code no 1  ----- ----------  --------- >>>>>>>>  Code till now





// import 'package:flutter/material.dart';
// import 'package:auto_scroll/auto_scroll.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';
// import 'package:auto_scroll/auto_scroll.dart';
//
// import 'package:harsh_minde/Models/CustomText.dart';
//
// class WebAbout extends StatelessWidget {
//   Widget technology(BuildContext context, String text) {
//     return Row(
//       children: [
//         Icon(
//           Icons.skip_next,
//           color: Color(0xff64FFDA).withOpacity(0.6),
//           size: 14.0,
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.01,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             color: Color(0xff717C99),
//             letterSpacing: 1.75,
//           ),
//         )
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       color: Colors.white,
//       height: size.height ,
//       width:size.width - 100,
//       child: Row(
//         children: [
//           //About me
//           Expanded(
//             child: Container(
//               height: size.height ,
//               width: size.width / 2 - 100,
//               child: Column(
//                 children: [
//                   //About me title
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CustomText(
//                         text: "01.",
//                         textsize: 20.0,
//                         color: Color(0xff61F9D5),
//                         fontWeight: FontWeight.w700,
//                       ),
//                       SizedBox(
//                         width: 12.0,
//                       ),
//                       CustomText(
//                         text: "About Me",
//                         textsize: 26.0,
//                         color: Color(0xffCCD6F6),
//                         fontWeight: FontWeight.w700,
//                       ),
//                       SizedBox(
//                         width: size.width * 0.01,
//                       ),
//                       Container(
//                         width: size.width / 4,
//                         height: 1.10,
//                         color: Color(0xff303C55),
//                       ),
//                     ],
//                   ),
//
//                   SizedBox(
//                     height: size.height * 0.05,
//                   ),
//
//                   //About me desc
//                   Expanded(
//                     child: Wrap(
//                       children: [
//                         CustomText(
//                           text:
//                           "I proudly wear multiple hats in this journey called life."
//                           "\nAn artist, where every line I draw tells a story,"
//                           "\na player,where challenges are the levels I conquer,"
//                           "\na student, where knowledge is my eternal companion."
//                           "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
//                           "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
//                           "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
//                           textsize: 16.0,
//                           color: Color(0xff828DAA),
//                           letterSpacing: 0.75,
//                         ),
//                         CustomText(
//                           text:
//                           "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
//                           "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
//                           "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
//                           "\nCurrently, I'm working on exciting projects, including a Semester Project."
//                           "\nI'm thrilled to showcase my upcoming projects !",
//                           textsize: 16.0,
//                           color: Color(0xff828DAA),
//                           letterSpacing: 0.75,
//                         ),
//                         CustomText(
//                           text:
//                           "\n\nHere are a few technologies, I've been working with recently:\n\n",
//                           textsize: 16.0,
//                           color: Color(0xff828DAA),
//                           // fontWeight: FontWeight.w500,
//                           letterSpacing: 0.75,
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   // Container(
//                   //   height: size.height * 0.15,
//                   //   width: size.width,
//                   //   child: Wrap(
//                   //     children: [
//                   //       Container(
//                   //         width: size.width * 0.20,
//                   //         height: size.height * 0.15,
//                   //         child: Column(
//                   //           children: [
//                   //             technology(context, "Dart"),
//                   //             technology(context, "Flutter"),
//                   //             technology(context, "Firebase"),
//                   //             technology(context, "UI/UX (Adobe Xd)"),
//                   //           ],
//                   //         ),
//                   //       ),
//                   //       Container(
//                   //         width: size.width * 0.15,
//                   //         height: size.height * 0.15,
//                   //         child: Column(
//                   //           children: [
//                   //             technology(context, "C/C++, Java."),
//                   //             technology(context, "HTML & (S)CSS"),
//                   //             technology(context, "MYSQL"),
//                   //             technology(context, "Git - Github"),
//                   //           ],
//                   //         ),
//                   //       )
//                   //     ],
//                   //   ),
//                   // )
//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Container(
//                         height: size.height * 0.01,
//                         width: size.width,
//                         alignment: Alignment.center,
//                         color: Color(0x18FCF200),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 technology(context, "Android"),
//                                 technology(context, "Flutter"),
//                                 technology(context, "SQLite"),
//                                 technology(context, "Firebase"),
//                                 technology(context, "CodeBlocks"),
//                                 technology(context, "Apache NetBeans"),
//
//                               ],
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 technology(context, "C/C++"),
//                                 technology(context, "Java"),
//                                 technology(context, "Dart"),
//                                 technology(context, "Python"),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//           //Profile Image
//           Expanded(
//             child: Container(
//               height: size.height / 1.5,
//               width: size.width / 2 - 100,
//               // color: Colors.white,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Positioned(
//                     top: size.height * 0.12,
//                     left: size.width * 0.120,
//                     child: Card(
//                       color: Color(0xff61F9D5),
//                       child: Container(
//                         margin: EdgeInsets.all(2.75),
//                         height: size.height / 2,
//                         width: size.width / 5,
//                         color: Color(0xff0A192F),
//                       ),
//                     ),
//                   ),
//                   CustomImageAnimation()
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CustomImageAnimation extends StatefulWidget {
//   CustomImageAnimation({ Key? key}) : super(key: key);
//
//   @override
//   _CustomImageAnimationState createState() => _CustomImageAnimationState();
// }
//
// class _CustomImageAnimationState extends State<CustomImageAnimation> {
//   Color customImageColor = Color(0xff61F9D5).withOpacity(0.5);
//   // ignore: unused_field
//   int _enterCounter = 0;
//   // ignore: unused_field
//   int _exitCounter = 0;
//   double x = 0.0;
//   double y = 0.0;
//
//   void _incrementEnter(PointerEvent details) {
//     setState(() {
//       _enterCounter++;
//     });
//   }
//
//   void _incrementExit(PointerEvent details) {
//     setState(() {
//       customImageColor = Color(0xff61F9D5).withOpacity(0.5);
//       _exitCounter++;
//     });
//   }
//
//   void _updateLocation(PointerEvent details) {
//     setState(() {
//       customImageColor = Colors.transparent;
//       x = details.position.dx;
//       y = details.position.dy;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return MouseRegion(
//       onEnter: _incrementEnter,
//       onHover: _updateLocation,
//       onExit: _incrementExit,
//       child: Stack(
//         children: [
//           Container(
//             height: size.height / 2,
//             width: size.width / 5,
//             color: Colors.black54,
//             child: Image(
//               fit: BoxFit.cover,
//               image: AssetImage("images/MyProfilePic.jpg"),
//             ),
//           ),
//           Container(
//             height: size.height / 2,
//             width: size.width / 5,
//             color: customImageColor,
//           ),
//         ],
//       ),
//     );
//   }
// }








// code no 2  ----- ----------  --------- >>>>>>>>  Today's code, good to mofify









// import 'package:flutter/material.dart';
// import 'package:harsh_minde/Models/CustomText.dart';
//
// class WebAbout extends StatelessWidget {
//   Widget technology(BuildContext context, String text) {
//     return Row(
//       children: [
//         Icon(
//           Icons.skip_next,
//           color: Color(0xff64FFDA).withOpacity(0.6),
//           size: 14.0,
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.01,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             color: Color(0xff717C99),
//             letterSpacing: 1.75,
//           ),
//         )
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       // color: Colors.white,
//       height: size.height,
//       width: size.width - 100,
//       child: Row(
//         children: [
//           // About me
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(20.0), // Added padding
//               child: ListView(
//                 children: [
//                   // About me title
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CustomText(
//                         text: "01.",
//                         textsize: 20.0,
//                         color: Color(0xff61F9D5),
//                         fontWeight: FontWeight.w700,
//                       ),
//                       SizedBox(
//                         width: 12.0,
//                       ),
//                       CustomText(
//                         text: "About Me",
//                         textsize: 26.0,
//                         color: Color(0xffCCD6F6),
//                         fontWeight: FontWeight.w700,
//                       ),
//                       SizedBox(
//                         width: size.width * 0.01,
//                       ),
//                       Container(
//                         width: size.width / 4,
//                         height: 1.10,
//                         color: Color(0xff303C55),
//                       ),
//                     ],
//                   ),
//
//                   SizedBox(
//                     height: size.height * 0.05,
//                   ),
//
//                   // About me desc
//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Wrap(
//                         children: [
//                           CustomText(
//                             text:
//                             "I proudly wear multiple hats in this journey called life."
//                                 "\nAn artist, where every line I draw tells a story,"
//                                 "\na player, where challenges are the levels I conquer,"
//                                 "\na student, where knowledge is my eternal companion."
//                                 "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
//                                 "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
//                                 "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
//                             textsize: 16.0,
//                             color: Color(0xff828DAA),
//                             letterSpacing: 0.75,
//                           ),
//                           CustomText(
//                             text:
//                             "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
//                                 "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
//                                 "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
//                                 "\nCurrently, I'm working on exciting projects, including a Semester Project."
//                                 "\nI'm thrilled to showcase my upcoming projects !",
//                             textsize: 16.0,
//                             color: Color(0xff828DAA),
//                             letterSpacing: 0.75,
//                           ),
//                           CustomText(
//                             text:
//                             "\n\nHere are a few technologies, I've been working with recently:\n\n",
//                             textsize: 16.0,
//                             color: Color(0xff828DAA),
//                             letterSpacing: 0.75,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//
//                   // Technology list
//                   Container(
//                     height: size.height * 0.15,
//                     width: size.width,
//                     child: Wrap(
//                       children: [
//                         Container(
//                           width: size.width * 0.20,
//                           height: size.height * 0.15,
//                           child: Column(
//                             children: [
//                               technology(context, "Dart"),
//                               technology(context, "Flutter"),
//                               technology(context, "Firebase"),
//                               technology(context, "UI/UX (Adobe Xd)"),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: size.width * 0.15,
//                           height: size.height * 0.15,
//                           child: Column(
//                             children: [
//                               technology(context, "C/C++, Java."),
//                               technology(context, "HTML & (S)CSS"),
//                               technology(context, "MYSQL"),
//                               technology(context, "Git - Github"),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//           // Profile Image
//           Expanded(
//             child: Container(
//               height: size.height / 1.5,
//               width: size.width / 2 - 100,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Positioned(
//                     top: size.height * 0.12,
//                     left: size.width * 0.120,
//                     child: Card(
//                       color: Color(0xff61F9D5),
//                       child: Container(
//                         margin: EdgeInsets.all(2.75),
//                         height: size.height / 2,
//                         width: size.width / 5,
//                         color: Color(0xff0A192F),
//                       ),
//                     ),
//                   ),
//                   CustomImageAnimation(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CustomImageAnimation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Stack(
//       children: [
//         Container(
//           height: size.height / 2,
//           width: size.width / 5,
//           color: Colors.black54,
//           child: Image(
//             fit: BoxFit.cover,
//             image: AssetImage("images/MyProfilePic.jpg"),
//           ),
//         ),
//         Container(
//           height: size.height / 2,
//           width: size.width / 5,
//           color: Colors.transparent,
//         ),
//       ],
//     );
//   }
// }












// code no 3  ----- ----------  --------- >>>>>>>>  also good to mofify & use








// import 'package:flutter/material.dart';
// import 'package:harsh_minde/Models/CustomText.dart';
//
// class WebAbout extends StatelessWidget {
//   Widget technology(BuildContext context, String text) {
//     return Row(
//       children: [
//         Icon(
//           Icons.skip_next,
//           color: Color(0xff64FFDA).withOpacity(0.6),
//           size: 14.0,
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.01,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             color: Color(0xff717C99),
//             letterSpacing: 1.75,
//           ),
//         )
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       // color: Colors.white,
//       height: size.height,
//       width: size.width - 200, // Adjusted width
//       child: Row(
//         children: [
//           // About me
//           Container(
//             width: size.width / 2 - 200, // Adjusted width
//             padding: EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // About me title
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     CustomText(
//                       text: "01.",
//                       textsize: 20.0,
//                       color: Color(0xff61F9D5),
//                       fontWeight: FontWeight.w700,
//                     ),
//                     SizedBox(
//                       width: 12.0,
//                     ),
//                     CustomText(
//                       text: "About Me",
//                       textsize: 26.0,
//                       color: Color(0xffCCD6F6),
//                       fontWeight: FontWeight.w700,
//                     ),
//                     SizedBox(
//                       width: size.width * 0.01,
//                     ),
//                     Container(
//                       width: size.width / 4,
//                       height: 1.10,
//                       color: Color(0xff303C55),
//                     ),
//                   ],
//                 ),
//
//                 SizedBox(
//                   height: size.height * 0.05,
//                 ),
//
//                 // About me desc
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Wrap(
//                       children: [
//                         CustomText(
//                           text:
//                           "I proudly wear multiple hats in this journey called life."
//                               "\nAn artist, where every line I draw tells a story,"
//                               "\na player, where challenges are the levels I conquer,"
//                               "\na student, where knowledge is my eternal companion."
//                               "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
//                               "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
//                               "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
//                           textsize: 16.0,
//                           color: Color(0xff828DAA),
//                           letterSpacing: 0.75,
//                         ),
//                         CustomText(
//                           text:
//                           "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
//                               "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
//                               "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
//                               "\nCurrently, I'm working on exciting projects, including a Semester Project."
//                               "\nI'm thrilled to showcase my upcoming projects !",
//                           textsize: 16.0,
//                           color: Color(0xff828DAA),
//                           letterSpacing: 0.75,
//                         ),
//                         CustomText(
//                           text:
//                           "\n\nHere are a few technologies, I've been working with recently:\n\n",
//                           textsize: 16.0,
//                           color: Color(0xff828DAA),
//                           letterSpacing: 0.75,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 // Technology list
//                 Container(
//                   height: size.height * 0.15,
//                   width: size.width,
//                   child: Wrap(
//                     children: [
//                       Container(
//                         width: size.width * 0.20,
//                         height: size.height * 0.15,
//                         child: Column(
//                           children: [
//                             technology(context, "Dart"),
//                             technology(context, "Flutter"),
//                             technology(context, "Firebase"),
//                             technology(context, "UI/UX (Adobe Xd)"),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: size.width * 0.15,
//                         height: size.height * 0.15,
//                         child: Column(
//                           children: [
//                             technology(context, "C/C++, Java."),
//                             technology(context, "HTML & (S)CSS"),
//                             technology(context, "MYSQL"),
//                             technology(context, "Git - Github"),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//           // Profile Image
//           Expanded(
//             child: Container(
//               height: size.height / 1.5,
//               width: size.width / 2 - 100,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Positioned(
//                     top: size.height * 0.12,
//                     left: size.width * 0.120,
//                     child: Card(
//                       color: Color(0xff61F9D5),
//                       child: Container(
//                         margin: EdgeInsets.all(2.75),
//                         height: size.height / 2,
//                         width: size.width / 5,
//                         color: Color(0xff0A192F),
//                       ),
//                     ),
//                   ),
//                   CustomImageAnimation(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CustomImageAnimation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Stack(
//       children: [
//         Container(
//           height: size.height / 2,
//           width: size.width / 5,
//           color: Colors.black54,
//           child: Image(
//             fit: BoxFit.cover,
//             image: AssetImage("images/MyProfilePic.jpg"),
//           ),
//         ),
//         Container(
//           height: size.height / 2,
//           width: size.width / 5,
//           color: Colors.transparent,
//         ),
//       ],
//     );
//   }
// }








// code no 4  ----- ----------  --------- >>>>>>>>  superb (just image is simply showing here)










// import 'package:flutter/material.dart';
// import 'package:harsh_minde/Models/CustomText.dart';
//
// class WebAbout extends StatelessWidget {
//   Widget technology(BuildContext context, String text) {
//     return Row(
//       children: [
//         Icon(
//           Icons.skip_next,
//           color: Color(0xff64FFDA).withOpacity(0.6),
//           size: 14.0,
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.01,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             color: Color(0xff717C99),
//             letterSpacing: 1.75,
//           ),
//         )
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Container(
//         padding: EdgeInsets.all(20.0),
//         height: size.height,
//         width: size.width - 100,
//         decoration: BoxDecoration(
//           color: Color(0xff0A192F),
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         child: Row(
//           children: [
//             // First Column: About Me Content
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 width: size.width / 2,
//                                 child: Wrap(
//                                   children: [
//                                     // About me title
//                                     Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         CustomText(
//                                           text: "01.",
//                                           textsize: 20.0,
//                                           color: Color(0xff61F9D5),
//                                           fontWeight: FontWeight.w700,
//                                         ),
//                                         SizedBox(
//                                           width: 12.0,
//                                         ),
//                                         CustomText(
//                                           text: "About Me",
//                                           textsize: 26.0,
//                                           color: Color(0xffCCD6F6),
//                                           fontWeight: FontWeight.w700,
//                                         ),
//                                         SizedBox(
//                                           width: size.width * 0.01,
//                                         ),
//                                         Container(
//                                           width: size.width / 4,
//                                           height: 1.10,
//                                           color: Color(0xff303C55),
//                                         ),
//                                       ],
//                                     ),
//
//                                     SizedBox(
//                                       height: size.height * 0.05,
//                                     ),
//
//                                     // About me desc
//                                     CustomText(
//                                       text:
//                                       "\nI proudly wear multiple hats in this journey called life."
//                                           "\nAn artist, where every line I draw tells a story,"
//                                           "\na player,where challenges are the levels I conquer,"
//                                           "\na student, where knowledge is my eternal companion."
//                                           "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
//                                           "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
//                                           "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//                                     CustomText(
//                                       text:
//                                       "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
//                                           "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
//                                           "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
//                                           "\nCurrently, I'm working on exciting projects, including a Semester Project."
//                                           "\nI'm thrilled to showcase my upcoming projects !",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//                                     CustomText(
//                                       text:
//                                       "\n\nHere are a few technologies, I've been working with recently:\n\n",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//
//                                     // Technology list
//                                     Container(
//                                       width: size.width,
//                                       child: Wrap(
//                                         spacing: 20.0,
//                                         children: [
//                                           Container(
//                                             width: size.width * 0.20,
//                                             child: Column(
//                                               children: [
//                                                 technology(context, "Dart"),
//                                                 technology(context, "Flutter"),
//                                                 technology(context, "Firebase"),
//                                                 technology(context, "UI/UX (Adobe Xd)"),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             width: size.width * 0.15,
//                                             child: Column(
//                                               children: [
//                                                 technology(context, "C/C++, Java."),
//                                                 technology(context, "HTML & (S)CSS"),
//                                                 technology(context, "MYSQL"),
//                                                 technology(context, "Git - Github"),
//                                               ],
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: size.width * 0.3,
//                           child: Container(
//                             alignment: Alignment.center,
//                             padding: EdgeInsets.symmetric(vertical: 10.0),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(10.0),
//                               child: Image(
//                                 width: size.width * 0.2,
//                                 // width: double.infinity, // Take the remaining width
//                                 height: size.height * 0.6,
//                                 fit: BoxFit.cover,
//                                 image: AssetImage("images/MyProfilePic.jpg"),
//                               ),
//                             ),
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }












// code no 5  ----- ----------  --------- >>>>>>>>  superb (animated img)









// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:harsh_minde/Models/CustomText.dart';
//
//
// class WebAbout extends StatefulWidget {
//   @override
//   _WebAboutState createState() => _WebAboutState();
// }
//
// class _WebAboutState extends State<WebAbout> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   Widget technology(BuildContext context, String text) {
//     return Row(
//       children: [
//         Icon(
//           Icons.skip_next,
//           color: Color(0xff64FFDA).withOpacity(0.6),
//           size: 14.0,
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.01,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             color: Color(0xff717C99),
//             letterSpacing: 1.75,
//           ),
//         )
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//
//     return SingleChildScrollView(
//       child: Container(
//         padding: EdgeInsets.all(20.0),
//         height: size.height,
//         width: size.width - 100,
//         decoration: BoxDecoration(
//           color: Color(0xff0A192F),
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         child: Row(
//           children: [
//             // First Column: About Me Content
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 width: size.width / 2,
//                                 child: Wrap(
//                                   children: [
//                                     // About me title
//                                     Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         CustomText(
//                                           text: "01.",
//                                           textsize: 20.0,
//                                           color: Color(0xff61F9D5),
//                                           fontWeight: FontWeight.w700,
//                                         ),
//                                         SizedBox(
//                                           width: 12.0,
//                                         ),
//                                         CustomText(
//                                           text: "About Me",
//                                           textsize: 26.0,
//                                           color: Color(0xffCCD6F6),
//                                           fontWeight: FontWeight.w700,
//                                         ),
//                                         SizedBox(
//                                           width: size.width * 0.01,
//                                         ),
//                                         Container(
//                                           width: size.width / 4,
//                                           height: 1.10,
//                                           color: Color(0xff303C55),
//                                         ),
//                                       ],
//                                     ),
//
//                                     SizedBox(
//                                       height: size.height * 0.05,
//                                     ),
//
//                                     // About me desc
//                                     CustomText(
//                                       text:
//                                       "\nI proudly wear multiple hats in this journey called life."
//                                           "\nAn artist, where every line I draw tells a story,"
//                                           "\na player,where challenges are the levels I conquer,"
//                                           "\na student, where knowledge is my eternal companion."
//                                           "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
//                                           "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
//                                           "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//                                     CustomText(
//                                       text:
//                                       "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
//                                           "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
//                                           "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
//                                           "\nCurrently, I'm working on exciting projects, including a Semester Project."
//                                           "\nI'm thrilled to showcase my upcoming projects !",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//                                     CustomText(
//                                       text:
//                                       "\n\nHere are a few technologies, I've been working with recently:\n\n",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//
//                                     // Technology list
//                                     Container(
//                                       width: size.width,
//                                       child: Wrap(
//                                         spacing: 20.0,
//                                         children: [
//                                           Container(
//                                             width: size.width * 0.20,
//                                             child: Column(
//                                               children: [
//                                                 technology(context, "Dart"),
//                                                 technology(context, "Flutter"),
//                                                 technology(context, "Firebase"),
//                                                 technology(context, "UI/UX (Adobe Xd)"),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             width: size.width * 0.15,
//                                             child: Column(
//                                               children: [
//                                                 technology(context, "C/C++, Java."),
//                                                 technology(context, "HTML & (S)CSS"),
//                                                 technology(context, "MYSQL"),
//                                                 technology(context, "Git - Github"),
//                                               ],
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//
//
//                         //  //  Works fine  --> kept copy by commenting it
//                         // Container(
//                         //   width: size.width * 0.3,
//                         //   child: MouseRegion(
//                         //     cursor: SystemMouseCursors.click,
//                         //     child: GestureDetector(
//                         //       child: Container(
//                         //         alignment: Alignment.center,
//                         //         padding: EdgeInsets.symmetric(vertical: 40.0),
//                         //         decoration: BoxDecoration(
//                         //           borderRadius: BorderRadius.circular(150.0),
//                         //           boxShadow: [
//                         //             BoxShadow(
//                         //               color: Colors.black.withOpacity(0.2),
//                         //               spreadRadius: 2,
//                         //               blurRadius: 10,
//                         //               offset: Offset(0, 3),
//                         //             ),
//                         //           ],
//                         //         ),
//                         //         child: Tooltip(
//                         //           message: '',
//                         //           child: MouseRegion(
//                         //             onEnter: (_) {
//                         //               _controller.forward();
//                         //             },
//                         //             onExit: (_) {
//                         //               _controller.reverse();
//                         //             },
//                         //             child: Stack(
//                         //               alignment: Alignment.bottomCenter,
//                         //               children: [
//                         //                 AnimatedBuilder(
//                         //                   animation: _controller,
//                         //                   builder: (context, child) {
//                         //                     return
//                         //                     //   Transform.rotate(
//                         //                     //   angle: _controller.isAnimating ? _controller.value * 1 * pi : 0,
//                         //                     //   child: ClipRRect(
//                         //                     //     borderRadius: BorderRadius.circular(10.0),
//                         //                     //     child: Image(
//                         //                     //       width: size.width * 0.2,
//                         //                     //       height: size.height * 0.6,
//                         //                     //       fit: BoxFit.cover,
//                         //                     //       image: AssetImage("images/MyProfilePic.jpg"),
//                         //                     //     ),
//                         //                     //   ),
//                         //                     // );
//                         //
//                         //                       // Transform.rotate(
//                         //                       //   angle: _controller.isAnimating ? _controller.value * pi : 0,
//                         //                       //   child: ClipRRect(
//                         //                       //     borderRadius: BorderRadius.circular(10.0),
//                         //                       //     child: Image(
//                         //                       //       width: size.width * 0.2,
//                         //                       //       height: size.height * 0.6,
//                         //                       //       fit: BoxFit.cover,
//                         //                       //       image: AssetImage("images/MyProfilePic.jpg"),
//                         //                       //     ),
//                         //                       //   ),
//                         //                       // );
//                         //
//                         //
//                         //                       Transform(
//                         //                         transform: Matrix4.rotationY(_controller.isAnimating ? _controller.value * pi : 0),
//                         //                         child: ClipRRect(
//                         //                           borderRadius: BorderRadius.circular(10.0),
//                         //                           child: Image(
//                         //                             width: size.width * 0.2,
//                         //                             height: size.height * 0.6,
//                         //                             fit: BoxFit.cover,
//                         //                             image: AssetImage("images/MyProfilePic.jpg"),
//                         //                           ),
//                         //                         ),
//                         //                       );
//                         //
//                         //                   },
//                         //                 ),
//                         //
//                         //                 // Quote
//                         //                 MouseRegion(
//                         //                   onHover: (_) {
//                         //                     _controller.forward();
//                         //                   },
//                         //                   onExit: (_) {
//                         //                     _controller.reverse();
//                         //                   },
//                         //                   child: AnimatedOpacity(
//                         //                     opacity: _controller.isAnimating ? 1.0 : 0.0,
//                         //                     duration: Duration(milliseconds: 300),
//                         //                     child: Container(
//                         //                       padding: EdgeInsets.all(8.0),
//                         //                       decoration: BoxDecoration(
//                         //                         color: Colors.black.withOpacity(0.7),
//                         //                         borderRadius: BorderRadius.circular(10.0),
//                         //                       ),
//                         //                       child: Text(
//                         //                         'Your Quote Here',
//                         //                         style: TextStyle(
//                         //                           color: Colors.white,
//                         //                           fontSize: 16.0,
//                         //                           fontWeight: FontWeight.bold,
//                         //                         ),
//                         //                       ),
//                         //                     ),
//                         //                   ),
//                         //                 ),
//                         //
//                         //
//                         //               ],
//                         //             ),
//                         //           ),
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//
//
//                         Container(
//                           width: size.width * 0.3,
//                           child: MouseRegion(
//                             cursor: SystemMouseCursors.click,
//                             child: GestureDetector(
//                               onTap: () {
//                                 // Handle onTap if needed
//                               },
//                               child: Container(
//                                 alignment: Alignment.center,
//                                 padding: EdgeInsets.symmetric(vertical: 40.0),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(150.0),
//                                 ),
//                                 child: Tooltip(
//                                   message: '',
//                                   child: MouseRegion(
//                                     onEnter: (_) {
//                                       _controller.forward();
//                                     },
//                                     onExit: (_) {
//                                       _controller.reverse();
//                                     },
//                                     child: Stack(
//                                       alignment: Alignment.bottomCenter,
//                                       children: [
//                                         AnimatedBuilder(
//                                           animation: _controller,
//                                           builder: (context, child) {
//                                             return Transform(
//                                               transform: Matrix4.rotationY(_controller.isAnimating ? _controller.value * pi : 0),
//                                               child: ClipRRect(
//                                                 borderRadius: BorderRadius.circular(10.0),
//                                                 child: Image(
//                                                   width: size.width * 0.2,
//                                                   height: size.height * 0.6,
//                                                   fit: BoxFit.cover,
//                                                   image: AssetImage("images/MyProfilePic.jpg"),
//                                                 ),
//                                               ),
//                                             );
//                                           },
//                                         ),
//
//                                         // Quote
//                                         Container(
//                                           padding: EdgeInsets.all(8.0),
//                                           decoration: BoxDecoration(
//                                             color: Colors.black.withOpacity(_controller.isAnimating ? 0.7 : 0.0),
//                                             borderRadius: BorderRadius.circular(10.0),
//                                           ),
//                                           child: Text(
//                                             'Your Quote Here',
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16.0,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }













// code no 6  ----- ----------  --------- >>>>>>>>  superb (animated img) + quote







//
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:harsh_minde/Models/CustomText.dart';
//
// class WebAbout extends StatefulWidget {
//   @override
//   _WebAboutState createState() => _WebAboutState();
// }
//
// class _WebAboutState extends State<WebAbout> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   Widget technology(BuildContext context, String text) {
//     return Row(
//       children: [
//         Icon(
//           Icons.skip_next,
//           color: Color(0xff64FFDA).withOpacity(0.6),
//           size: 14.0,
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.01,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             color: Color(0xff717C99),
//             letterSpacing: 1.75,
//           ),
//         )
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//
//     return SingleChildScrollView(
//       child: Container(
//         padding: EdgeInsets.all(20.0),
//         height: size.height,
//         width: size.width - 100,
//         decoration: BoxDecoration(
//           color: Color(0xff0A192F),
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         child: Row(
//           children: [
//             // First Column: About Me Content
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 width: size.width / 2,
//                                 child: Wrap(
//                                   children: [
//                                     // About me title
//                                     Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         CustomText(
//                                           text: "01.",
//                                           textsize: 20.0,
//                                           color: Color(0xff61F9D5),
//                                           fontWeight: FontWeight.w700,
//                                         ),
//                                         SizedBox(
//                                           width: 12.0,
//                                         ),
//                                         CustomText(
//                                           text: "About Me",
//                                           textsize: 26.0,
//                                           color: Color(0xffCCD6F6),
//                                           fontWeight: FontWeight.w700,
//                                         ),
//                                         SizedBox(
//                                           width: size.width * 0.01,
//                                         ),
//                                         Container(
//                                           width: size.width / 4,
//                                           height: 1.10,
//                                           color: Color(0xff303C55),
//                                         ),
//                                       ],
//                                     ),
//
//                                     SizedBox(
//                                       height: size.height * 0.05,
//                                     ),
//
//                                     // About me desc
//                                     CustomText(
//                                       text:
//                                       "\nI proudly wear multiple hats in this journey called life."
//                                           "\nAn artist, where every line I draw tells a story,"
//                                           "\na player,where challenges are the levels I conquer,"
//                                           "\na student, where knowledge is my eternal companion."
//                                           "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
//                                           "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
//                                           "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//                                     CustomText(
//                                       text:
//                                       "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
//                                           "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
//                                           "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
//                                           "\nCurrently, I'm working on exciting projects, including a Semester Project."
//                                           "\nI'm thrilled to showcase my upcoming projects !",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//                                     CustomText(
//                                       text:
//                                       "\n\nHere are a few technologies, I've been working with recently:\n\n",
//                                       textsize: 16.0,
//                                       color: Color(0xff828DAA),
//                                       letterSpacing: 0.75,
//                                     ),
//
//                                     // Technology list
//                                     Container(
//                                       width: size.width,
//                                       child: Wrap(
//                                         spacing: 20.0,
//                                         children: [
//                                           Container(
//                                             width: size.width * 0.20,
//                                             child: Column(
//                                               children: [
//                                                 technology(context, "Dart"),
//                                                 technology(context, "Flutter"),
//                                                 technology(context, "Firebase"),
//                                                 technology(context, "UI/UX (Adobe Xd)"),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             width: size.width * 0.15,
//                                             child: Column(
//                                               children: [
//                                                 technology(context, "C/C++, Java."),
//                                                 technology(context, "HTML & (S)CSS"),
//                                                 technology(context, "MYSQL"),
//                                                 technology(context, "Git - Github"),
//                                               ],
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: size.width * 0.3,
//                           child: MouseRegion(
//                             cursor: SystemMouseCursors.click,
//                             child: GestureDetector(
//                               onTap: () {
//                                 // Handle onTap if needed
//                               },
//                               child: Container(
//                                 alignment: Alignment.center,
//                                 padding: EdgeInsets.symmetric(vertical: 40.0),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(150.0),
//                                 ),
//                                 child: Tooltip(
//                                   message: '',
//                                   child: MouseRegion(
//                                     onEnter: (_) {  _controller.forward();    },
//                                     onExit: (_) {   _controller.reverse();    },
//                                     child: Stack(
//                                       alignment: Alignment.bottomCenter,
//                                       children: [
//                                         //  //  Semi-transparent overlay
//                                         // Positioned.fill(
//                                         //   child: AnimatedOpacity(
//                                         //     opacity: _controller.isAnimating ? 0.5 : 0.0,
//                                         //     duration: Duration(milliseconds: 1000),
//                                         //     child: Container(
//                                         //       decoration: BoxDecoration(
//                                         //         color: Colors.black,
//                                         //         borderRadius: BorderRadius.circular(10.0),
//                                         //       ),
//                                         //     ),
//                                         //   ),
//                                         // ),
//
//                                         //  //  Displaying only 1 Image
//                                         // AnimatedBuilder(
//                                         //   animation: _controller,
//                                         //   builder: (context, child) {
//                                         //     return Transform(
//                                         //       transform: Matrix4.rotationY(
//                                         //           _controller.isAnimating ? 0 : _controller.value * pi ),
//                                         //       child: ClipRRect(
//                                         //         borderRadius: BorderRadius.circular(10.0),
//                                         //         child: Image(
//                                         //           width: size.width * 0.2,
//                                         //           height: size.height * 0.6,
//                                         //           fit: BoxFit.cover,
//                                         //           image: AssetImage("images/MyProfilePic.jpg"),
//                                         //         ),
//                                         //       ),
//                                         //     );
//                                         //   },
//                                         // ),
//
//                                         //  //  Displaying only 2 Images @ Animation
//                                         AnimatedBuilder(
//                                           animation: _controller,
//                                           builder: (context, child) {
//                                             return Stack(
//                                               alignment: Alignment.center,
//                                               children: [
//                                                 // Background Image
//                                                 Transform(
//                                                   transform: Matrix4.rotationY(
//                                                       _controller.isAnimating ? _controller.value * pi : 0),
//                                                   child: ClipRRect(
//                                                     borderRadius: BorderRadius.circular(10.0),
//                                                     child: Image(
//                                                       width: size.width * 0.2,
//                                                       height: size.height * 0.6,
//                                                       fit: BoxFit.cover,
//                                                       image: AssetImage("images/MyPic.png"),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 // Overlapping Image
//                                                 Transform(
//                                                   transform: Matrix4.rotationY(
//                                                       _controller.isAnimating ? 0 : _controller.value * pi),
//                                                   child: ClipRRect(
//                                                     borderRadius: BorderRadius.circular(10.0),
//                                                     child: Image(
//                                                       width: size.width * 0.2,
//                                                       height: size.height * 0.6,
//                                                       fit: BoxFit.cover,
//                                                       image: AssetImage("images/MyProfilePic.jpg"),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             );
//                                           },
//                                         ),
//
//
//                                         //   // Testing 1 @ Displaying Simple Quote
//                                         // Quote
//                                         // Container(
//                                         //   padding: EdgeInsets.all(8.0),
//                                         //   decoration: BoxDecoration(
//                                         //     color: Colors.black.withOpacity(_controller.isAnimating ? 0.7 : 0.0),
//                                         //     borderRadius: BorderRadius.circular(10.0),
//                                         //   ),
//                                         //   child: Text(
//                                         //     'Your Quote Here',
//                                         //     style: TextStyle(
//                                         //       color: Colors.white,
//                                         //       fontSize: 16.0,
//                                         //       fontWeight: FontWeight.bold,
//                                         //     ),
//                                         //   ),
//                                         // ),
//
//                                         //  // Testing 2 @ Displaying Simple Quote
//                                         // AnimatedOpacity(
//                                         //   opacity: _controller.value,
//                                         //   duration: Duration(milliseconds: 1000),
//                                         //   child: Container(
//                                         //     padding: EdgeInsets.all(8.0),
//                                         //     decoration: BoxDecoration(
//                                         //       color: Colors.black.withOpacity(_controller.value * 0.7),
//                                         //       borderRadius: BorderRadius.circular(10.0),
//                                         //     ),
//                                         //     child: Text(
//                                         //       'Your Quote Here',
//                                         //       style: TextStyle(
//                                         //         color: Colors.white,
//                                         //         fontSize: 16.0,
//                                         //         fontWeight: FontWeight.bold,
//                                         //       ),
//                                         //     ),
//                                         //   ),
//                                         // ),
//
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//










// code no 7  ----- ----------  --------- >>>>>>>>  Displaying code 6 in card view







import 'dart:math';
import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomText.dart';

class WebAbout extends StatefulWidget {
  @override
  _WebAboutState createState() => _WebAboutState();
}

class _WebAboutState extends State<WebAbout> with SingleTickerProviderStateMixin {

late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.1,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: "01.",
                  textsize: 20.0,
                  color: Color(0xff61F9D5),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: 12.0,
                ),
                CustomText(
                  text: "About Me",
                  textsize: 26.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Container(
                  width: size.width / 4,
                  height: 1.10,
                  color: Color(0xff303C55),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  margin: EdgeInsets.all(16.0),
                  color: Colors.transparent, // Set card color as transparent
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width / 2,
                                child: Wrap(
                                  children: [
                                    CustomText(
                                      text: "\nI proudly wear multiple hats in this journey called life."
                                          "\nAn artist, where every line I draw tells a story,"
                                          "\na player, where challenges are the levels I conquer,"
                                          "\na student, where knowledge is my eternal companion."
                                          "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
                                          "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
                                          "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
                                      textsize: 16.0,
                                      color: Color(0xff828DAA),
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text: "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
                                          "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
                                          "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
                                          "\nCurrently, I'm working on exciting projects, including a Semester Project."
                                          "\nI'm thrilled to showcase my upcoming projects !",
                                      textsize: 16.0,
                                      color: Color(0xff828DAA),
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text: "\n\nHere are a few technologies, I've been working with recently:\n\n",
                                      textsize: 16.0,
                                      color: Color(0xff828DAA),
                                      letterSpacing: 0.75,
                                    ),
                                    Container(
                                      width: size.width,
                                      child: Row(
                                        children: [
                                          Wrap(
                                            spacing: 5.0,
                                            children: [
                                              Container(
                                                // width: size.width * 0.20,
                                                width: size.width * 0.10,

                                                child: Column(
                                                  children: [
                                                    technology(context, "C/C++"),
                                                    technology(context, "Java"),
                                                    technology(context, "Dart"),
                                                    technology(context, "Python"),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // width: size.width * 0.15,
                                                width: size.width * 0.13,

                                                child: Column(
                                                  children: [
                                                    technology(context, "Android"),
                                                    technology(context, "Flutter"),
                                                    technology(context, "SQLite"),
                                                    technology(context, "Firebase"),
                                                  ],
                                                ),
                                              ),

                                              Container(
                                                width: size.width * 0.15,
                                                child: Column(
                                                  children: [
                                                    technology(context, "Git-GitHub"),
                                                    technology(context, "VS Code"),
                                                    technology(context, "CodeBlocks"),
                                                    technology(context, "A. NetBeans"),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.3,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle onTap if needed
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 40.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150.0),
                                ),
                                child: Tooltip(
                                  message: '',
                                  child: MouseRegion(
                                    onEnter: (_) {
                                      _controller.forward();
                                    },
                                    onExit: (_) {
                                      _controller.reverse();
                                    },
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        AnimatedBuilder(
                                          animation: _controller,
                                          builder: (context, child) {
                                            return Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Transform(
                                                  transform: Matrix4.rotationY(
                                                      _controller.isAnimating ? _controller.value * pi : 0),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10.0),
                                                    child: Image(
                                                      width: size.width * 0.2,
                                                      height: size.height * 0.6,
                                                      fit: BoxFit.cover,
                                                      image: AssetImage("images/MyPic.png"),
                                                    ),
                                                  ),
                                                ),
                                                Transform(
                                                  transform: Matrix4.rotationY(
                                                      _controller.isAnimating ? 0 : _controller.value * pi),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10.0),
                                                    child: Image(
                                                      width: size.width * 0.2,
                                                      height: size.height * 0.6,
                                                      fit: BoxFit.cover,
                                                      image: AssetImage("images/MyProfilePic.jpg"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

