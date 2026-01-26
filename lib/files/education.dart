import 'package:flutter/material.dart';

import '../sectionCard.dart';
import '../slideUpTransition.dart';

class educations extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScrollSlideUp(
      child: SectionCard(
        title: 'Educational Info',
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "College",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Intermediate Education in Pre-Engineering \n @ Saddique Faqeer Govt Boys Degree College Mithi, Tharparkar\n 2021-2023 \n Percentage : 78%",
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "University",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Align(alignment: Alignment.centerLeft, child: Text("Now")),
            Text(
              "Bachelor of Software Engineering @ University of Sindh, Jamshoro\n 2024-2028(3rd Year) \n GPA : 3.0/4.0 ",
            ),
          ],
        ),
      ),
    );
  }
}