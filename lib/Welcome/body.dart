import 'package:flutter/material.dart';
import '../home.dart';
import '../rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO TREE CAMPUS",
              style: TextStyle(fontWeight: FontWeight.bold),

            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/main_theme.jpeg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Welcome",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyApp();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}