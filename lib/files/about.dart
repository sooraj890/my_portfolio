import 'package:flutter/material.dart';
import '../sectionCard.dart';
import '../slideUpTransition.dart';

class about extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ScrollSlideUp(
      child: Padding(
        padding: const EdgeInsets.only(left: 70, right: 70,bottom: 50,top: 10),
        child: Text(
          "Hello, this is Sooraj  \n  Enthusiastic  Software  Engineering  student  specializing in  mobile   app  development with   Flutter. Skilled   in building   cross-platform,  responsive apps  using  Dart, Flutter   widgets, state  management,  API integration,  and local   storage. Passionate  about creating  efficient, user-friendly  mobile  applications.",
          style: TextStyle(fontSize: screenWidth < 700 ? 12 : 16,),
        ),
      ),
    );
  }
}