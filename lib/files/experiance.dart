import 'package:flutter/material.dart';

import '../sectionCard.dart';
import '../slideUpTransition.dart';

class experiances extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

// Set container size based on breakpoints
    double containerWidth;
    double containerHeight;

    if (screenWidth < 600) {
      // Mobile
      containerWidth = screenWidth * 0.9;
      containerHeight = screenHeight * 0.45;
    } else if (screenWidth < 1000) {
      // Tablet
      containerWidth = screenWidth * 0.50; // two items side by side
      containerHeight = screenHeight * 0.65;
    } else {
      // Desktop
      containerWidth = screenWidth * 0.3; // smaller, many side by side
      containerHeight = screenHeight * 0.48;
    }    return ScrollSlideUp(
      child: Container(
        width: containerWidth,
        height: containerHeight,
        child: SectionCard(
            title: 'Experiance',
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft, child: Text("🔹6+ months of hands-on experience in Flutter & Dart"),),
                Align(alignment: Alignment.centerLeft, child: Text("🔹Built responsive mobile and web applications using Flutter"),),
                Align(alignment: Alignment.centerLeft, child: Text("🔹Implemented clean UI layouts with Material Design principles"),),
                Align(alignment: Alignment.centerLeft, child: Text("🔹Created reusable widgets and custom components"),),
                Align(alignment: Alignment.centerLeft, child: Text("🔹Integrated Firebase services (Hosting, basic auth, assets)"),),
                Align(alignment: Alignment.centerLeft, child: Text("🔹Applied responsive design techniques using MediaQuery & LayoutBuilder"),),
                Align(alignment: Alignment.centerLeft, child: Text("🔹Used Hero animations and smooth transitions for better UX"),)
              ],
            )
        ),
      ),
    );
  }
}