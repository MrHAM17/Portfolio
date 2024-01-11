// import 'package:flutter/material.dart';
//
// class WorkCustomData extends StatelessWidget {
//   final String title;
//   final String subTitle;
//   final String duration;
//
//   const WorkCustomData(
//       {required Key key,
//       required this.title,
//       required this.subTitle,
//       required this.duration})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 22.0,
//             color: Color(0xffCCD6F6),
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//         SizedBox(
//           height: 6.0,
//         ),
//         Text(
//           subTitle,
//           style: TextStyle(
//             fontSize: 13.0,
//             color: Color(0xffCCD6F6).withOpacity(0.5),
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         SizedBox(
//           height: 6.0,
//         ),
//         Text(
//           duration,
//           style: TextStyle(
//             fontSize: 12.0,
//             color: Color(0xffCCD6F6).withOpacity(0.5),
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ],
//     );
//   }
// }















































import 'package:flutter/material.dart';

class WorkCustomData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;
  final double titleFontSize;
  final double subTitleFontSize;
  final double durationFontSize;

  const WorkCustomData({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.duration,
    this.titleFontSize = 22.0,
    this.subTitleFontSize = 13.0,
    this.durationFontSize = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: titleFontSize,
            color: Color(0xffCCD6F6),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: subTitleFontSize,
            color: Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          duration,
          style: TextStyle(
            fontSize: durationFontSize,
            color: Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
