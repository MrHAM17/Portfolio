
// import 'package:flutter/material.dart';
//
// class OSImages extends StatelessWidget {
//   final String image;
//
//   // final Color containerColor; // Add this line
//   // OSImages({required this.image, this.containerColor = const Color(0xff64FFDA)});
//
//   OSImages({required this.image});
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//
//       // color: containerColor.withOpacity(0.4), // Use withOpacity here
//       color: Color(0xff64FFDA).withOpacity(0.4),
//
//       child: Padding(
//         padding: const EdgeInsets.all(2.75),
//         child: Image(
//           height: size.height * 0.73,
//           width: size.width * 0.17,
//           fit: BoxFit.cover,
//           image: AssetImage(image),
//         ),
//       ),
//     );
//   }
// }




















import 'package:flutter/material.dart';

class OSImages extends StatelessWidget {
  final String image;

  final Color containerColor; // Add this line
  OSImages({required this.image, this.containerColor = const Color(0xff64FFDA)});     //  Gives color to border frame of the project's photo

  // OSImages({required this.image});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(

      color: containerColor.withOpacity(0.4), // Use withOpacity here
      // color: Color(0xff64FFDA).withOpacity(0.4),

      child: Padding(
        padding: const EdgeInsets.all(2.75),
        child: Image(
          height: size.height * 0.73,
          width: size.width * 0.17,
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
