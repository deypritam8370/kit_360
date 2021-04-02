import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Login/login_screen.dart';
// import 'package:flutter_auth/Screens/SignUp/components/background.dart';
import 'file:///C:/Users/deypr/AndroidStudioProjects/kit_360/lib/Components/or_divider.dart';
import 'file:///C:/Users/deypr/AndroidStudioProjects/kit_360/lib/Components/social_icon.dart';
// import 'package:flutter_auth/Screens/Login/components/background.dart';
//import 'package:kit_360/Screens/SignUp/signup_screen.dart';
import 'package:kit_360/Components/already_have_an_account_check.dart';
import 'package:kit_360/Components/rounded_button.dart';
import 'package:kit_360/Components/rounded_input_field.dart';
import 'package:kit_360/Components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "SIGNUP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.03),
        // SvgPicture.asset(
        //   "assets/icons/signup.svg",
        //   height: size.height * 0.35,
        // ),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(
          text: "SIGNUP",
          press: () {},
        ),
        SizedBox(height: size.height * 0.03),
        AlreadyHaveAnAccountCheck(
          login: false,
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
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialIcon(
              iconSrc: "assets/icons/google.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "assets/icons/google.svg",
              press: () {},
            ),
          ],
        )
      ],
    );
  }
}
