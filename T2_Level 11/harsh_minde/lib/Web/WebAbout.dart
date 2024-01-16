import 'package:flutter/material.dart';
import 'package:auto_scroll/auto_scroll.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:auto_scroll/auto_scroll.dart';

import 'package:harsh_minde/Models/CustomText.dart';

class WebAbout extends StatelessWidget {
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
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width:size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width / 2 - 100,
            child: Column(
              children: [
                //About me title
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

                //About me desc
                Wrap(
                  children: [
                    CustomText(
                      text:
                      "I proudly wear multiple hats in this journey called life."
                      "\nAn artist, where every line I draw tells a story,"
                      "\na player,where challenges are the levels I conquer,"
                      "\na student, where knowledge is my eternal companion."
                      "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
                      "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
                      "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                      "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
                      "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
                      "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
                      "\nCurrently, I'm working on exciting projects, including a Semester Project."
                      "\nI'm thrilled to showcase my upcoming projects !",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                      "\n\nHere are a few technologies, I've been working with recently:\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      // fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                  ],
                ),

                // Container(
                //   height: size.height * 0.15,
                //   width: size.width,
                //   child: Wrap(
                //     children: [
                //       Container(
                //         width: size.width * 0.20,
                //         height: size.height * 0.15,
                //         child: Column(
                //           children: [
                //             technology(context, "Dart"),
                //             technology(context, "Flutter"),
                //             technology(context, "Firebase"),
                //             technology(context, "UI/UX (Adobe Xd)"),
                //           ],
                //         ),
                //       ),
                //       Container(
                //         width: size.width * 0.15,
                //         height: size.height * 0.15,
                //         child: Column(
                //           children: [
                //             technology(context, "C/C++, Java."),
                //             technology(context, "HTML & (S)CSS"),
                //             technology(context, "MYSQL"),
                //             technology(context, "Git - Github"),
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // )
                Container(
                  width: size.width,
                  alignment: Alignment.center,
                  color: Color(0x18FCF200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          technology(context, "Android"),
                          technology(context, "Flutter"),
                          technology(context, "SQLite"),
                          technology(context, "Firebase"),
                          technology(context, "CodeBlocks"),
                          technology(context, "Apache NetBeans"),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          technology(context, "C/C++"),
                          technology(context, "Java"),
                          technology(context, "Dart"),
                          technology(context, "Python"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.12,
                    left: size.width * 0.120,
                    child: Card(
                      color: Color(0xff61F9D5),
                      child: Container(
                        margin: EdgeInsets.all(2.75),
                        height: size.height / 2,
                        width: size.width / 5,
                        color: Color(0xff0A192F),
                      ),
                    ),
                  ),
                  CustomImageAnimation()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  CustomImageAnimation({ Key? key}) : super(key: key);

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Color(0xff61F9D5).withOpacity(0.5);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Color(0xff61F9D5).withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: Colors.black54,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("images/MyProfilePic.jpg"),
            ),
          ),
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}
