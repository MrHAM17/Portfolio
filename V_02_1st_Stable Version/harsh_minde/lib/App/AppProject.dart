import 'package:flutter/material.dart';

class AppProject extends StatelessWidget {
  final VoidCallback? onTab; // Change the type to VoidCallback
  final String image;

  AppProject({required this.onTab, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        // onTap: onTab,
        onTap: onTab ?? () {}, // Handle the case where onTab is null
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
