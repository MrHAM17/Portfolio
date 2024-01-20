import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/Method.dart';

class CustomData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;
  final double titleFontSize;
  final double subTitleFontSize;
  final double durationFontSize;

  const CustomData({
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
    final Method method = Method(); // Create an instance of the Method class

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
            color: Color(0xffCCD6F6).withOpacity(0.9),
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
            color: Color(0xffCCD6F6).withOpacity(0.7),
            fontWeight: FontWeight.w700,
          ),
        ),

        // // // For navigation to Appsilon website (in Experience section)

        // // Trial 1 ------------------------->  works
        // if (subTitle.toLowerCase().contains("click here to checkout."))
          // // If want to change subtitle  --> then also do changes in CustomData.dart for same.
          //
          // ElevatedButton(
          //   onPressed: () { method.launchURL("https://appsilon-website-9546d.web.app/#/"); },
          //   child: Text("Checkout here."), // // If want to change subtitle  --> then also do changes in CustomData.dart for same.
          // ),

                // // Trial 2------------------------->  works
                // //     onTap: () {
                // //       // Call the method to launch the URL
                // //       method.launchURL("https://appsilon-website-9546d.web.app/#/");
                // //     },
                // //     child: Text(
                // //       subTitle,
                // //       style: TextStyle(
                // //         fontSize: subTitleFontSize,
                // //         color: Color(0xffCCD6F6).withOpacity(0.9),
                // //         fontWeight: FontWeight.w600,
                // //       ),
                // //     ),
                // //   ),
      //  }

        // Trial 3 ------------------------->  works
        if (title.contains("\nPartner -\nAppsilon Inc."))  // // If want to change subtitle  --> then also do changes in CustomData.dart for same.
          ElevatedButton(
            onPressed: () {
              method.launchURL("https://appsilon-website-9546d.web.app/#/");
            },
            child: Text("Check out here"),
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: Color(0xff64FFDA),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),     ),
              fixedSize: Size(157.0, 20), // Adjust the width and height as needed
            ),

          ),
      ],
    );
  }
}
