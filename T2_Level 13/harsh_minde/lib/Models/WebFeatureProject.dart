




// // Code no 1:  ok (but affecting the view) ----------------  --------------------- >>>>>>>>>>>>>>>>>>>>>







// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import 'package:harsh_minde/Models/CustomText.dart';
//
// class WebFeatureProject extends StatelessWidget {
//   final String imagePath;
//   final String projectTitle;
//   final String projectDesc;
//   final String tech1;
//   final String tech2;
//   final String tech3;
//   final void Function()? onTab;
//
//   WebFeatureProject({
//     required this.imagePath,
//     required this.onTab,
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
//       //color: Colors.tealAccent,
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
//                     //color: Colors.redAccent,
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
//                     //color: Colors.indigo,
//                     child: Wrap(
//                       // mainAxisAlignment: MainAxisAlignment.end,
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
//                   child: Container(
//                     height: size.height * 0.08,
//                     width: size.width * 0.25,
//                     // color: Colors.indigo,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         CustomText(
//                           text: tech1 == null ? "" : tech1,
//                           textsize: 14,
//                           color: Colors.grey,
//                           letterSpacing: 1.75,
//                         ),
//                         SizedBox(
//                           width: 16.0,
//                         ),
//                         CustomText(
//                           text: tech2 == null ? "" : tech2,
//                           textsize: 14,
//                           color: Colors.grey,
//                           letterSpacing: 1.75,
//                         ),
//                         SizedBox(
//                           width: 16.0,
//                         ),
//                         CustomText(
//                           text: tech3 == null ? "" : tech3,
//                           textsize: 14,
//                           color: Colors.grey,
//                           letterSpacing: 1.75,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 // Gitub Link
//                 Positioned(
//                   top: size.height * 0.42,
//                   right: 10.0,
//                   child: Container(
//                     height: size.height * 0.08,
//                     width: size.width * 0.25,
//                     // color: Colors.indigo,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         IconButton(
//                           icon: FaIcon(FontAwesomeIcons.github),
//                           color: Colors.white.withOpacity(0.3),
//                           onPressed: onTab,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
// }

















// // Code no 2:  Just fine (with horizontal scroll view) ----------------  --------------------- >>>>>>>>>>>>>>>>>>>>>











// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:harsh_minde/Models/CustomText.dart';
//
// class WebFeatureProject extends StatelessWidget {
//   final String imagePath;
//   final String projectTitle;
//   final String projectDesc;
//   final String tech1;
//   final String tech2;
//   final String tech3;
//   final void Function()? onTab;
//
//   WebFeatureProject({
//     required this.imagePath,
//     required this.onTab,
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
//
//     return Container(
//       height: size.height - 280,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           _buildImageCard(context),
//           _buildInformationCard(context),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildImageCard(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Card(
//       elevation: 3,
//       child: Container(
//         height: size.height - 280,
//         width: size.width * 0.5,
//         child: Image(
//           fit: BoxFit.contain,
//           image: AssetImage(imagePath),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInformationCard(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     double minHeight = size.height - 540;
//
//     return MouseRegion(
//       onEnter: (_) {
//         // Implement auto-scroll logic here
//         // You can use a ScrollController to animate the scroll position
//       },
//       child: Card(
//         elevation: 3,
//         child: Container(
//           width: size.width * 0.35, // Adjust the width as needed
//           constraints: BoxConstraints(
//             minHeight: minHeight,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildProjectTitle(),
//               SizedBox(height: 8.0),
//               _buildProjectDescription(),
//               SizedBox(height: 8.0),
//               _buildTechRow(),
//               SizedBox(height: 8.0),
//               _buildGitHubIconButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildProjectTitle() {
//     return CustomText(
//       text: projectTitle,
//       textsize: 27,
//       color: Colors.grey,
//       fontWeight: FontWeight.w700,
//       letterSpacing: 1.75,
//     );
//   }
//
//   Widget _buildProjectDescription() {
//     return Container(
//       color: Color(0xff172A45),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: CustomText(
//           text: projectDesc,
//           textsize: 16.0,
//           color: Colors.white.withOpacity(0.4),
//           letterSpacing: 0.75,
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTechRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         _buildTechText(tech1),
//         SizedBox(width: 16.0),
//         _buildTechText(tech2),
//         SizedBox(width: 16.0),
//         _buildTechText(tech3),
//       ],
//     );
//   }
//
//   Widget _buildTechText(String tech) {
//     return CustomText(
//       text: tech == null ? "" : tech,
//       textsize: 14,
//       color: Colors.grey,
//       letterSpacing: 1.75,
//     );
//   }
//
//   Widget _buildGitHubIconButton() {
//     return IconButton(
//       icon: FaIcon(FontAwesomeIcons.github),
//       color: Colors.white.withOpacity(0.3),
//       onPressed: onTab,
//     );
//   }
// }















// // Code no 3:  improving code no 2 ----------------  --------------------- >>>>>>>>>>>>>>>>>>>>>


//
//
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:harsh_minde/Models/CustomText.dart';
//
// class WebFeatureProject extends StatelessWidget {
//   final String imagePath;
//   final String projectTitle;
//   final String projectDesc;
//   final String tech1;
//   final String tech2;
//   final String tech3;
//   final void Function()? onTab;
//
//   WebFeatureProject({
//     required this.imagePath,
//     required this.onTab,
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
//
//     return Container(
//       height: size.height - 280,
//       child: Card(
//         elevation: 3,
//         child: Row(
//           children: [
//             _buildImageCard(context),
//             _buildInformationCard(context),
//           ],
//         ),
//         color: Colors.transparent, // Set card color as transparent
//       ),
//     );
//   }
//
//   Widget _buildImageCard(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height - 280,
//       width: size.width * 0.5,
//       child: Card(
//         color: Colors.transparent, // Set card color as transparent
//         elevation: 3,
//         child: Image(
//           fit: BoxFit.contain,
//           image: AssetImage(imagePath),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInformationCard(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     double minHeight = size.height - 540;
//     return Card(
//       color: Colors.transparent, // Set card color as transparent
//       elevation: 3,
//       child: Container(
//         width: size.width * 0.3, // Adjust the width as needed
//         constraints: BoxConstraints(
//           minHeight: minHeight,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center, // Center the content
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // _buildProjectTitle(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust alignment as needed
//               children: [
//                 _buildProjectTitle(),
//                 _buildGitHubIconButton(),
//               ],
//             ),
//             SizedBox(height: 8.0),
//             _buildProjectDescription(),
//             SizedBox(height: 8.0),
//             _buildTechRow(),
//             // SizedBox(height: 8.0),
//             // _buildGitHubIconButton(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildProjectTitle() {
//     return CustomText(
//       text: projectTitle,
//       textsize: 27,
//       color: Colors.grey,
//       fontWeight: FontWeight.w700,
//       letterSpacing: 1.75,
//       textAlign: TextAlign.end,
//     );
//   }
//
//   Widget _buildProjectDescription() {
//     return Container(
//       color: Color(0xff172A45),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: CustomText(
//           text: projectDesc,
//           textsize: 16.0,
//           color: Colors.white.withOpacity(0.4),
//           letterSpacing: 0.75,
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTechRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         _buildTechText(tech1),
//         SizedBox(width: 16.0),
//         _buildTechText(tech2),
//         SizedBox(width: 16.0),
//         _buildTechText(tech3),
//       ],
//     );
//   }
//
//   Widget _buildTechText(String tech) {
//     return CustomText(
//       text: tech == null ? "" : tech,
//       textsize: 14,
//       color: Colors.grey,
//       letterSpacing: 1.75,
//     );
//   }
//
//   Widget _buildGitHubIconButton() {
//     return IconButton(
//       icon: FaIcon(FontAwesomeIcons.github),
//       color: Colors.white.withOpacity(0.3),
//       onPressed: onTab,
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
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // height: size.height - 280,
      height: size.height * 0.6,

      child: Card(
        elevation: 3,
        child: Row(
          children: [
            _buildImageCard(context),
            _buildInformationCard(context),
          ],
        ),
        color: Colors.transparent, // Set card color as transparent
      ),
    );
  }

  Widget _buildImageCard(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // height: size.height - 280,
      height: size.height,
      width: size.width * 0.5,
      child: Card(
        color: Colors.transparent, // Set card color as transparent
        elevation: 3,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }

  // Widget _buildInformationCard(BuildContext context) {
  //   var size = MediaQuery.of(context).size;
  //   double minHeight = size.height - 540;
  //
  //   return Expanded(
  //     child: ListView(
  //       scrollDirection: Axis.vertical,
  //       shrinkWrap: true,
  //       children: [
  //         Card(
  //           color: Colors.transparent, // Set card color as transparent
  //           elevation: 3,
  //           child: Container(
  //             width: size.width * 0.3, // Adjust the width as needed
  //             constraints: BoxConstraints(
  //               minHeight: minHeight,
  //             ),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center, // Center the content
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust alignment as needed
  //                   children: [
  //                     _buildProjectTitle(),
  //                     _buildGitHubIconButton(),
  //                   ],
  //                 ),
  //                 SizedBox(height: 8.0),
  //                 _buildProjectDescription(),
  //                 SizedBox(height: 8.0),
  //                 _buildTechRow(),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildInformationCard(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // double minHeight = size.height - 540;
    double minHeight = size.height * 0.1;

    return Expanded(
      child: Card(
        color: Colors.transparent,
        elevation: 3,
        child: SingleChildScrollView( // Add SingleChildScrollView
          child: Container(
            width: size.width * 0.3,
            constraints: BoxConstraints(
              minHeight: minHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProjectTitle(),
                    _buildGitHubIconButton(),
                  ],
                ),
                SizedBox(height: 8.0),
                _buildProjectDescription(),
                SizedBox(height: 8.0),
                _buildTechRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget _buildProjectTitle() {
    return CustomText(
      text: projectTitle,
      textsize: 27,
      color: Colors.grey,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.75,
      textAlign: TextAlign.end,
    );
  }

  Widget _buildProjectDescription() {
    return Container(
      color: Color(0xff172A45),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomText(
          text: projectDesc,
          textsize: 16.0,
          color: Colors.white.withOpacity(0.4),
          letterSpacing: 0.75,
        ),
      ),
    );
  }

  Widget _buildTechRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildTechText(tech1),
        SizedBox(width: 16.0),
        _buildTechText(tech2),
        SizedBox(width: 16.0),
        _buildTechText(tech3),
      ],
    );
  }

  Widget _buildTechText(String tech) {
    return CustomText(
      text: tech == null ? "" : tech,
      textsize: 14,
      color: Colors.grey,
      letterSpacing: 1.75,
    );
  }

  Widget _buildGitHubIconButton() {
    return IconButton(
      icon: FaIcon(FontAwesomeIcons.github),
      color: Colors.white.withOpacity(0.3),
      onPressed: onTab,
    );
  }
}









