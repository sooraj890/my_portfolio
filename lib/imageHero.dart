import 'package:flutter/material.dart';

class ImagePreviewScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Hero(
            tag: 'profile-image',
            child: InteractiveViewer(
              child: Image.asset(
                "assets/images/image.jpg",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}