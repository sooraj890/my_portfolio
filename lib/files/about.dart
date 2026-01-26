import 'package:flutter/material.dart';
import '../sectionCard.dart';
import '../slideUpTransition.dart';

class about extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScrollSlideUp(
      child: SectionCard(
        title: 'Professional Summary',
        child: Text(
          "Enthusiastic Software Engineering student specializing in mobile app development with Flutter. Skilled in building cross-platform, responsive apps using Dart, Flutter widgets, state management, API integration, and local storage. Passionate about creating efficient, user-friendly mobile applications.",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}