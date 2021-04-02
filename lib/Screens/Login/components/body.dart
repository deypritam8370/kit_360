import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:kit_360/Screens/SignUp/signup_screen.dart';
import 'package:kit_360/Components/already_have_an_account_check.dart';
import 'package:kit_360/Components/rounded_button.dart';
import 'package:kit_360/Components/rounded_input_field.dart';
import 'package:kit_360/Components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:kit_360/Components/social_icon.dart';
import 'package:kit_360/Components/or_divider.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.03),
        // SvgPicture.asset(
        //   "assets/icons/login.svg",
        //   height: size.height * 0.35,
        // ),
        SizedBox(height: size.height * 0.03),
        RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(
          text: "LOGIN",
          press: () {},
        ),
        SizedBox(height: size.height * 0.03),
        AlreadyHaveAnAccountCheck(
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
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialIcon(
              iconSrc: "assets/icons/googleicon.png",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "assets/icons/googleicon.png",
              press: () {},
            ),
          ],
        )
      ],
    );
  }
}
