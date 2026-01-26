import 'package:flutter/material.dart';
class footer extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.05;
    fontSize = fontSize.clamp(16, 28); // min 16, max 28
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      color: Colors.blueGrey[900], // or any color
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: Column(
                    children: [
                      Text("Services", style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold),),
                      Text("Flutter | Dart"),
                      Text("Figma"),
                      Text("Firebase"),
                      Text("SQFLite"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Column(
                    children: [
                      Align(alignment:Alignment.centerLeft,child: Text("Contact Info", style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold),)),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          Text("03325804476")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.email),
                          Text("soorajsuther919@gmail.com")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.place),
                          Expanded(child: Text("Near Ali Palace, Qasimabad, Hyderabad"))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Divider(thickness: 1, color: Colors.grey.shade400,),
          Center(
            child: Text("© 2026 Sooraj Kumar | Mobile Application Developer | Built with Flutter & Dart",
              style: TextStyle(
                color: Colors.white, fontSize: 14, // use MediaQuery if you want it smaller on small screens
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}