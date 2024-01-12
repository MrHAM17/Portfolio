// import 'package:flutter/material.dart';
//
// import 'package:harsh_minde/Widgets/CustomText.dart';
//
// class FeatureProject extends StatelessWidget {
//   final String imagePath;
//   final String projectTitle;
//   final String projectDesc;
//   final String tech1;
//   final String tech2;
//   final String tech3;
//   final void Function()? ontab;
//
//   FeatureProject({
//     required this.imagePath,
//     required this.ontab,
//     required this.projectDesc,
//     required this.projectTitle,
//     this.tech1 = "",
//     this.tech2 = "",
//     this.tech3 = "",
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height / 0.999,
//       width: size.width - 100,
//       child: Column(
//         children: [
//           Container(
//             height: size.height - 100,
//             width: size.width - 84,
//             child: Stack(
//               children: [
//                 //Image
//                 Positioned(
//                   top: size.height * 0.02,
//                   left: 20.0,
//                   child: Container(
//                     height: size.height * 0.60,
//                     width: size.width * 0.5,
//                     child: Image(
//                       fit: BoxFit.contain,
//                       image: AssetImage(imagePath),
//                     ),
//                   ),
//                 ),
//
//                 // Short Desc
//                 Positioned(
//                   top: size.height / 6,
//                   right: 10.0,
//                   child: Container(
//                     alignment: Alignment.center,
//                     height: size.height * 0.18,
//                     width: size.width * 0.35,
//                     color: Color(0xff172A45),
//                     child: Wrap(
//                       alignment: WrapAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                           child: CustomText(
//                             text: projectDesc,
//                             textsize: 16.0,
//                             color: Colors.white.withOpacity(0.4),
//                             letterSpacing: 0.75,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 // Project Title
//                 Positioned(
//                   top: 16.0,
//                   right: 10.0,
//                   child: Container(
//                     height: size.height * 0.10,
//                     width: size.width * 0.25,
//                     child: Wrap(
//                       alignment: WrapAlignment.end,
//                       children: [
//                         CustomText(
//                           text: projectTitle,
//                           textsize: 27,
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w700,
//                           letterSpacing: 1.75,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 // Project Resources
//                 Positioned(
//                   top: size.height * 0.36,
//                   right: 10.0,
//                   child: _buildTechRow(size, tech1, tech2, tech3),
//                 ),
//
//                 // GitHub Link
//                 Positioned(
//                   top: size.height * 0.42,
//                   right: 10.0,
//                   child: _buildGithubLinkButton(size),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTechRow(Size size, String tech1, String tech2, String tech3) {
//     return Container(
//       height: size.height * 0.08,
//       width: size.width * 0.25,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           _buildTechText(tech1),
//           SizedBox(width: 16.0),
//           _buildTechText(tech2),
//           SizedBox(width: 16.0),
//           _buildTechText(tech3),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTechText(String tech) {
//     return CustomText(
//       text: tech,
//       textsize: 14,
//       color: Colors.grey,
//       letterSpacing: 1.75,
//     );
//   }
//
//   Widget _buildGithubLinkButton(Size size) {
//     return Container(
//       height: size.height * 0.08,
//       width: size.width * 0.25,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           IconButton(
//             icon: Icon(Icons.link, color: Colors.white.withOpacity(0.3)),
//             onPressed: ontab,
//           ),
//         ],
//       ),
//     );
//   }
// }







































import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:harsh_minde/Models/CustomText.dart';

class WebFeatureProject extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final void Function()? onTab;

  WebFeatureProject({
    required this.imagePath,
    required this.onTab,
    required this.projectDesc,
    required this.projectTitle,
    this.tech1 = "",
    this.tech2 = "",
    this.tech3 = "",
  });

  @override
  // Widget build(BuildContext context) {
  //   var size = MediaQuery.of(context).size;
  //   return Container(
  //     height: size.height / 0.999,
  //     width: size.width - 100,
  //     child: Column(
  //       children: [
  //         Container(
  //           height: size.height - 100,
  //           width: size.width - 84,
  //           child: Stack(
  //             children: [
  //               // Image
  //               Positioned(
  //                 top: size.height * 0.02,
  //                 left: 20.0,
  //                 child: Container(
  //                   height: size.height * 0.60,
  //                   width: size.width * 0.5,
  //                   child: Image(
  //                     fit: BoxFit.contain,
  //                     image: AssetImage(imagePath),
  //                   ),
  //                 ),
  //               ),
  //
  //               // Short Desc
  //               Positioned(
  //                 top: size.height / 6,
  //                 right: 10.0,
  //                 child: Container(
  //                   alignment: Alignment.center,
  //                   height: size.height * 0.18,
  //                   width: size.width * 0.35,
  //                   color: Color(0xff172A45),
  //                   child: Padding(
  //                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
  //                     child: CustomText(
  //                       text: projectDesc,
  //                       textsize: 16.0,
  //                       color: Colors.white.withOpacity(0.4),
  //                       letterSpacing: 0.75,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //
  //               // Project Title
  //               Positioned(
  //                 top: 16.0,
  //                 right: 10.0,
  //                 child: Container(
  //                   height: size.height * 0.10,
  //                   width: size.width * 0.25,
  //                   child: Wrap(
  //                     alignment: WrapAlignment.end,
  //                     children: [
  //                       CustomText(
  //                         text: projectTitle,
  //                         textsize: 27,
  //                         color: Colors.grey,
  //                         fontWeight: FontWeight.w700,
  //                         letterSpacing: 1.75,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //
  //               // Project Resources
  //               Positioned(
  //                 top: size.height * 0.36,
  //                 right: 10.0,
  //                 child: _buildTechRow(size, tech1, tech2, tech3),
  //               ),
  //
  //               // GitHub Link
  //               Positioned(
  //                 top: size.height * 0.42,
  //                 right: 10.0,
  //                 child: _buildGithubLinkButton(size),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget _buildTechRow(Size size, String tech1, String tech2, String tech3) {
  //   return Container(
  //     height: size.height * 0.08,
  //     width: size.width * 0.25,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         _buildTechText(tech1),
  //         SizedBox(width: 16.0),
  //         _buildTechText(tech2),
  //         SizedBox(width: 16.0),
  //         _buildTechText(tech3),
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget _buildTechText(String tech) {
  //   return CustomText(
  //     text: tech,
  //     textsize: 14,
  //     color: Colors.grey,
  //     letterSpacing: 1.75,
  //   );
  // }
  //
  // Widget _buildGithubLinkButton(Size size) {
  //   return Container(
  //     height: size.height * 0.08,
  //     width: size.width * 0.25,
  //     child: GestureDetector(
  //       onTap: onTab,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         children: [
  //           Icon(Icons.link, color: Colors.white.withOpacity(0.3)),
  //         ],
  //       ),
  //     ),
  //   );
  // }










  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 0.999,
      width: size.width - 100,
      //color: Colors.tealAccent,
      child: Column(
        children: [
          Container(
            height: size.height - 100,
            width: size.width - 84,
            child: Stack(
              children: [
                //Image
                Positioned(
                  top: size.height * 0.02,
                  left: 20.0,
                  child: Container(
                    height: size.height * 0.60,
                    width: size.width * 0.5,
                    //color: Colors.redAccent,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),

                // Short Desc
                Positioned(
                  top: size.height / 6,
                  right: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * 0.18,
                    width: size.width * 0.35,
                    color: Color(0xff172A45),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomText(
                            text: projectDesc,
                            textsize: 16.0,
                            color: Colors.white.withOpacity(0.4),
                            letterSpacing: 0.75,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Project Tiitle
                Positioned(
                  top: 16.0,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.10,
                    width: size.width * 0.25,
                    //color: Colors.indigo,
                    child: Wrap(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      alignment: WrapAlignment.end,
                      children: [
                        CustomText(
                          text: projectTitle,
                          textsize: 27,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ),
                ),

                // Project Resources
                Positioned(
                  top: size.height * 0.36,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    // color: Colors.indigo,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                          text: tech1 == null ? "" : tech1,
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        CustomText(
                          text: tech2 == null ? "" : tech2,
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        CustomText(
                          text: tech3 == null ? "" : tech3,
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ),
                ),

                // Gitub Link
                Positioned(
                  top: size.height * 0.42,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    // color: Colors.indigo,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          color: Colors.white.withOpacity(0.3),
                          onPressed: onTab,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
