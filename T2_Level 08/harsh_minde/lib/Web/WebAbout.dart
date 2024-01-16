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
          // Icons.home,
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
      height: size.height *1.6,
      width: size.width - 100,
      child: Row(
        children: [
         Container(
           // color: Colors.white,
              height: size.height *1.6,
              // width: size.width / 2 - 100,    // <<<<<<< ------  Gives overflow error
              width: (size.width /2) - 50  , // keep it as it is ---------------->>>>>>>>>>>>.....  don't change it
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
                        // color: Color(0xff303C55),
                        color: Color(0xffe40aff),
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
                        "Hello! I'm Tushar, a Freelancer based in Nashik, IN.\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n"
                        "\nShortly currently, I am purshuing my Bachlor's degree in Computter science and Engineering at University of Pune, as well as doing freelancing where I work on a wide variety of interesting and meaningful projects on a daily basis."
                        "\nHere are a few technologies I've been working with recently:\n",
                        textsize: 16.0,
                        color: Color(0xff828DAA),
                        letterSpacing: 0.75,
                      ),
                      Row(
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
                    ],
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //       children: [
                  //         technology(context, "Android"),
                  //         technology(context, "Flutter"),
                  //         technology(context, "SQLite"),
                  //         technology(context, "Firebase"),
                  //         technology(context, "CodeBlocks"),
                  //         technology(context, "Apache NetBeans"),
                  //
                  //       ],
                  //     ),
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //       children: [
                  //         technology(context, "C/C++"),
                  //         technology(context, "Java"),
                  //         technology(context, "Dart"),
                  //         technology(context, "Python"),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ],
              ),
         ),
          Profile Image
          Expanded(
            child: Container(
              height: size.height / 0.09,
              width: size.width / 2 - 50,
              // alignment: FractionalOffset.topCenter,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: size.height * 0.02,
                    left: size.width * 0.120,
                    child: Card(
                      color: Color(0xff61F9D5),
                      child: Container(
                        // alignment: Alignment.topRight,
                        margin: EdgeInsets.all(2.75),
                        height: size.height * 0.55 ,
                        width: size.width / 5,
                        color: Color(0xff0A192F),
                      ),
                    ),
                  ),
                  CustomImageAnimation(key: UniqueKey())
                ],
              ),
            ),
          ),

          // Expanded(
          //   child: Container(
          //     color: Color(0xffd0d6e0),
          //     height: size.height * 1.6,
          //     width: (size.width / 2) - 50,
          //     alignment: Alignment.topCenter,
          //      child: Card(
          //         color: Color(0xff0A192F),
          //         child: Container(
          //           height: size.height *0.6,
          //           width: (size.width / 2) - 50,
          //           child: Stack(
          //             alignment: Alignment.centerLeft,
          //             children: [
          //               Align(
          //                 alignment: Alignment.topCenter,
          //                 child: Card(
          //                   color: Color(0xff61F9D5),
          //                   child: Container(
          //                     margin: EdgeInsets.all(2.75),
          //                     height: size.height * 0.50  ,
          //                     width: size.width / 5,
          //                     color: Color(0xff0A192F),
          //                   ),
          //                 ),
          //               ),
          //               CustomImageAnimation(key: UniqueKey())
          //             ],
          //           ),
          //         ),
          //       ),
          //
          //   ),
          // ),
        ]
    )
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  CustomImageAnimation({required Key key}) : super(key: key);

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
