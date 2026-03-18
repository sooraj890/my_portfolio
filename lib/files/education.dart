import 'package:flutter/material.dart';
import '../sectionCard.dart';
import '../slideUpTransition.dart';

class educations extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScrollSlideUp(
      child: SectionCard(
        title: 'Education',
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "College",
                style: TextStyle(fontSize: 16, ),
              ),
            ),
            Text(
              "Intermediate Education in Pre-Engineering \n @ Saddique Faqeer Govt Boys Degree College Mithi, Tharparkar\n 2021-2023 \n Percentage : 78%",style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "University",
                style: TextStyle(fontSize: 16, ),
              ),
            ),
            Align(alignment: Alignment.centerLeft, child: Text("        Now",style: TextStyle(color: Colors.blue),)),
            Text(
              "Bachelor of Software Engineering @ University of Sindh, Jamshoro\n 2024-2028(3rd Year) \n GPA : 3.0/4.0 ",style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}