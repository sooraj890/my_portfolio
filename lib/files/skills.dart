import 'package:flutter/material.dart';

import '../sectionCard.dart';
import '../slideUpTransition.dart';

class skills extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ScrollSlideUp(
      child: SectionCard(
        title: 'My Skills',
        child: Column(
          children: [
            Text(
              "🔹Languages & Frameworks : Dart (Flutter),   kotlin \n🔹Mobile  Development:   Cross-platform apps, Responsive   UI,  Animations State management \n🔹Backend &  Storage:   Firebase, SQLite,   REST APIs \n🔹Tools:  Android Studio,  VS Code, Git/GitHub",style: TextStyle(fontSize: screenWidth < 700 ? 12 : 13),
            ),
            SizedBox(height: 40),
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
                      height: 100,
                      width: 80,
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
                      height: 100,
                      width: 80,
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
                      height: 100,
                      width: 80,
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
                      height: 100,
                      width: 80,
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