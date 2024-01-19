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
