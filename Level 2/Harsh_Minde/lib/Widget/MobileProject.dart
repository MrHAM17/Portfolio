import 'package:flutter/material.dart';

class MobileProject extends StatelessWidget {
  final VoidCallback onTab; // Use VoidCallback instead of Function
  final String image;

  MobileProject({required this.onTab, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTab,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
