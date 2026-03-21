import 'package:flutter/material.dart';
import '../sectionCard.dart';
import '../slideUpTransition.dart';

class educations extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScrollSlideUp(
      child: SectionCard(
        title: 'Education',
        child: Row(
          children: [
            Column(
              children: [
                Icon(Icons.arrow_circle_right, color: Colors.purple),
                Container(
                  width: 2,
                  height: 180,
                  color: Colors.grey,
                ),
                Icon(Icons.arrow_circle_right, color: Colors.purple),
                Container(
                  width: 2,
                  height: 80,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(width: 50,),
            Expanded(
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
                    "Intermediate Education in Pre-Engineering \n @ Saddique Faqeer Govt Boys Degree College Mithi, Tharparkar\n 2021-2023 \n Percentage : 80%",style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 90),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "University",
                      style: TextStyle(fontSize: 16, ),
                    ),
                  ),
                  Align(alignment: Alignment.centerLeft, child: Text("        Currently",style: TextStyle(color: Colors.purple),)),
                  Text(
                    "Continue Bachelor of Software Engineering @ University of Sindh, Jamshoro\n 2024-2028(3rd Year) \n GPA : 3.0/4.0 ",style: TextStyle(fontSize: 12),
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