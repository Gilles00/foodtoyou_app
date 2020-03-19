import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: CircleAvatar(
                  child: ClipOval(
                      child: Image.asset("assets/images/kindpng_1108769.png")),
                  radius: 100.0,
                  backgroundColor: Colors.redAccent,
                ),
              ),
            ),
            Text(
              "Welcome App",
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "App Version 01.00",
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Copyrights : FoodToYou Technologies Private Limited",
              style: TextStyle(fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}
