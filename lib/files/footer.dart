import 'package:flutter/material.dart';
class footer extends StatelessWidget {
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.05;
    fontSize = fontSize.clamp(12, 20); // min 16, max 28
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      color: Colors.black12,// or any color
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text("Services", style: TextStyle(fontSize: fontSize,),),
                      SizedBox(height: 10,),
                      Text("Flutter | Dart",style: TextStyle(fontSize: 11),),
                      Text("Figma",style: TextStyle(fontSize: 11)),
                      Text("Firebase",style: TextStyle(fontSize: 11)),
                      Text("SQFLite",style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Column(
                    children: [
                      Align(alignment:Alignment.centerLeft,child: Text("Contact Me", style: TextStyle(fontSize: fontSize),)),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.phone,size: 15,),
                          Text("03325804476",style: TextStyle(fontSize: 11))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.email,size: 15),
                          Text("soorajsuther919@gmail.com",style: TextStyle(fontSize: 11))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.place,size: 15),
                          Expanded(child: Text("Near Ali Palace, Qasimabad, Hyderabad",style: TextStyle(fontSize: 11)))
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