

// Trial 1 --------------------------------------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>






import 'package:flutter/material.dart';
import 'package:harsh_minde/App/AppHome.dart';
import 'package:harsh_minde/Web/WebHome.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  // Responsive breakpoint
  static const double desktopBreakpoint = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveBuilder(
            builder: (context, sizingInformation) {
                if (sizingInformation.deviceScreenType == DeviceScreenType.desktop ||
                  constraints.maxWidth >= desktopBreakpoint ||
                  constraints.maxWidth >= 1000 ) {
                return WebHome();
              }
              else {
                return AppHome();
              }
            },
          );
        },
      ),
    );
  }
}










// Trial 2 --------------------------------------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>










// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:harsh_minde/App/AppHome.dart';
// import 'package:harsh_minde/Web/WebHome.dart';
// import 'package:responsive_builder/responsive_builder.dart';
//
// class Home extends StatelessWidget {
//   // Responsive breakpoint
//   static const double desktopBreakpoint = 1000;
//
//   Future<void> _loadData() async {
//     // Simulate loading data or any asynchronous operation here
//     await Future.delayed(Duration(milliseconds: 0200));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return ResponsiveBuilder(
//             builder: (context, sizingInformation) {
//               return FutureBuilder(
//                 future: _loadData(),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.done) {
//                     // Loading is complete, return the appropriate home screen
//                     if (sizingInformation.deviceScreenType == DeviceScreenType.desktop ||
//                         constraints.maxWidth >= desktopBreakpoint ||
//                         constraints.maxWidth >= 1000) {
//                       return WebHome();
//                     } else {
//                       return AppHome();
//                     }
//                   } else {
//                     // While data is loading, show the loading indicator
//                     return Center(
//                       child: SpinKitFadingCube(
//                         color: Colors.teal, // You can customize the color
//                         size: 50.0,
//                       ),
//                     );
//                   }
//                 },
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }










// Trial 3 --------------------------------------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>






//
// import 'package:flutter/material.dart';
// import 'package:harsh_minde/App/AppHome.dart';
// import 'package:harsh_minde/Web/WebHome.dart';
// import 'package:responsive_builder/responsive_builder.dart';
//
// class Home extends StatelessWidget {
//   // Responsive breakpoint
//   static const double desktopBreakpoint = 1000;
//
//   Future<void> _loadData() async {
//     // Simulate loading data or any asynchronous operation here
//     await Future.delayed(Duration(milliseconds: 5500));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return ResponsiveBuilder(
//             builder: (context, sizingInformation) {
//               return FutureBuilder(
//                 future: _loadData(),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.done) {
//                     // Loading is complete, return the appropriate home screen
//                     if (sizingInformation.deviceScreenType == DeviceScreenType.desktop ||
//                         constraints.maxWidth >= desktopBreakpoint ||
//                         constraints.maxWidth >= 1000) {
//                       return WebHome();
//                     } else {
//                       return AppHome();
//                     }
//                   } else {
//                     // While data is loading, show the GIF on full screen
//                     return Container(
//                       color: Colors.white, // Adjust the background color as needed
//                       width: double.infinity,
//                       height: double.infinity,
//                       child: Center(
//                         child: Image.asset(
//                           'assets/images/splash_loading.gif', // Replace with your actual file path
//                           width: double.infinity, // Occupy full width
//                           height: double.infinity, // Occupy full height
//                         ),
//                       ),
//                     );
//                   }
//                 },
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }





// Trial 4 --------------------------------------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>







// import 'package:flutter/material.dart';
// import 'package:harsh_minde/App/AppHome.dart';
// import 'package:harsh_minde/Web/WebHome.dart';
// import 'package:responsive_builder/responsive_builder.dart';
//
// class Home extends StatelessWidget {
//   // Responsive breakpoint
//   static const double desktopBreakpoint = 1000;
//
//   Future<void> _loadData() async {
//     // Simulate loading data or any asynchronous operation here
//     await Future.delayed(Duration(milliseconds: 5500));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return ResponsiveBuilder(
//             builder: (context, sizingInformation) {
//               return FutureBuilder(
//                 future: _loadData(),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.done) {
//                     // Loading is complete, return the appropriate home screen
//                     if (sizingInformation.deviceScreenType == DeviceScreenType.desktop ||
//                         constraints.maxWidth >= desktopBreakpoint ||
//                         constraints.maxWidth >= 1000) {
//                       return WebHome();
//                     } else {
//                       return AppHome();
//                     }
//                   } else {
//                     // While data is loading, show the GIF
//                     return Center(
//                       child: Image.asset(
//                         'assets/images/splash_loading.gif', // Replace with your actual file path
//                         width: 100.0, // Adjust the width as needed
//                         height: 100.0, // Adjust the height as needed
//                       ),
//                     );
//                   }
//                 },
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


