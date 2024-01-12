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
      // appBar: AppBar(
      //   title: Text('Harsh Minde'),
      // ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveBuilder(
            builder: (context, sizingInformation) {
              // Use the sizingInformation to determine the layout
              if (sizingInformation.deviceScreenType == DeviceScreenType.desktop ||
                  constraints.maxWidth >= desktopBreakpoint) {
                return WebHome();
              } else {
                return AppHome();
              }
            },
          );
        },
      ),
    );
  }
}
