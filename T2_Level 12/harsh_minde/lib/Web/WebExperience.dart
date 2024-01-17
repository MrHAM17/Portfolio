import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:harsh_minde/Models/CustomText.dart';
import 'package:harsh_minde/Web/WebExperienceBox.dart';

class WebExperience extends StatefulWidget {
  @override
  _WebExperienceState createState() => _WebExperienceState();
}

class _WebExperienceState extends State<WebExperience> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.1,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "02.",
                textsize: 20.0,
                color: Color(0xff61F9D5),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: "My Experience ",
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: Colors.transparent, // Set card color as transparent
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Expanded(
                            //   flex: 1,
                            //   child: Container(
                            //     height: size.height * 0.9,
                            //     child: Stack(
                            //       children: [
                            //         Center(
                            //           child: VerticalDivider(
                            //             color: Color(0xff64FFDA),
                            //             thickness: 1.75,
                            //             width: 10,
                            //             indent: 10,
                            //             endIndent: 10,
                            //           ),
                            //         ),
                            //         Container(
                            //           child: Center(
                            //             child: Row(
                            //               children: [
                            //                 Column(
                            //                   mainAxisAlignment:
                            //                   MainAxisAlignment.spaceAround,
                            //                   children: [
                            //                     CircleAvatar(
                            //                       backgroundColor:
                            //                       Color(0xff41FBDA),
                            //                       child: FaIcon(
                            //                         FontAwesomeIcons.studiovinari,
                            //                         color: Color(0xff0A192F),
                            //                       ),
                            //                     ),
                            //                     CircleAvatar(
                            //                       backgroundColor:
                            //                       Color(0xff41FBDA),
                            //                       child: FaIcon(
                            //                         FontAwesomeIcons.freeCodeCamp,
                            //                         color: Color(0xff0A192F),
                            //                       ),
                            //                     ),
                            //                     CircleAvatar(
                            //                       backgroundColor:
                            //                       Color(0xff41FBDA),
                            //                       child: FaIcon(
                            //                         FontAwesomeIcons.laptopCode,
                            //                         color: Color(0xff0A192F),
                            //                       ),
                            //                     ),
                            //                   ],
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // ),



                            Expanded(
                              flex: 1,
                              child: Container(
                                  height: size.height * 0.7,
                                  //color: Colors.indigo,
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
                                                  backgroundColor:
                                                  Color(0xff41FBDA),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.studiovinari,
                                                    color: Color(0xff0A192F),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  backgroundColor:
                                                  Color(0xff41FBDA),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.freeCodeCamp,
                                                    color: Color(0xff0A192F),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  backgroundColor:
                                                  Color(0xff41FBDA),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.laptopCode,
                                                    color: Color(0xff0A192F),
                                                  ),
                                                ),
                                                // CircleAvatar(
                                                //   backgroundColor: Colors.deepOrange,
                                                //   child: FaIcon(FontAwesomeIcons.coffee,
                                                //       color: Colors.white),
                                                // ),
                                                // CircleAvatar(
                                                //   backgroundColor: Colors.deepPurple,
                                                //   child: FaIcon(FontAwesomeIcons.dev,
                                                //       color: Colors.white),
                                                // ),
                                              ],
                                            )),
                                      )
                                    ],
                                  )),
                            ),
                            Expanded(
                              flex: 4,
                              child: WebExperienceBox(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}







