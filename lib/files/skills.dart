import 'package:flutter/material.dart';

import '../sectionCard.dart';
import '../slideUpTransition.dart';

class skills extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScrollSlideUp(
      child: SectionCard(
        title: 'Technical Skills',
        child: Column(
          children: [
            Text(
              "•Languages & Frameworks: Dart (Flutter), kotlin \n•Mobile Development: Cross-platform apps, Responsive UI, Animations, State management \n•Backend & Storage: Firebase, SQLite, REST APIs \n•Tools: Android Studio, VS Code, Git/GitHub",
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      "assets/images/flutter.jpg",
                      height: 150,
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    elevation: 10,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      "assets/images/dart.webp",
                      height: 150,
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    elevation: 10,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      "assets/images/firebase.png",
                      height: 150,
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    elevation: 10,
                    shadowColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      "assets/images/sqflite.png",
                      height: 150,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}