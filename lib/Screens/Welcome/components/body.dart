import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Login/login_screen.dart';
import 'package:kit_360/Screens/SignUp/signup_screen.dart';
// import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:kit_360/components/rounded_button.dart';
import 'package:kit_360/constants.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:kit_360/Screens/Dashboard/home_screen.dart';
import 'package:kit_360/Components/change_theme_button_widget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return SafeArea(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hi, there",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "WELCOME",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(height: size.height * 0.05),
            // Image.asset(
            //     "Assets/images/playstore.png",
            //     height: size.height * 0.20
            // ),
            Image(
                image: AssetImage("Assets/images/playstore.png"),
                height: size.height * 0.20),
            // SvgPicture.asset(
            //   "assets/icons/chat.svg",
            //   height: size.height * 0.45,
            // ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "DASHBOARD",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
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
