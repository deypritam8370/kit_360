import 'package:flutter/material.dart';
import 'package:kit_360/Components/text_field_container.dart';
import 'package:kit_360/Screens/Login/login_screen.dart';
import 'package:kit_360/Components/or_divider.dart';
import 'package:kit_360/Components/social_icon.dart';
import 'package:kit_360/Components/already_have_an_account_check.dart';
import 'package:kit_360/Components/rounded_button.dart';
import 'package:kit_360/Components/rounded_input_field.dart';
import 'package:kit_360/Components/rounded_password_field.dart';
import 'package:kit_360/constants.dart';
import 'package:kit_360/firebase_auth_service.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Expanded(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.1),
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
              SizedBox(height: size.height * 0.05),
              // SvgPicture.asset(
              //   "assets/icons/signup.svg",
              //   height: size.height * 0.35,
              // ),
              ClipOval(
                child: Image(
                    image: AssetImage("assets/images/kit360logo.png"),
                    height: size.height * 0.20,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              TextFieldContainer(
                child: TextField(
                  controller: emailController,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    hintText: "Enter Email Here",
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    hintText: "Password",
                    icon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: kPrimaryColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.blueAccent),
                  ),
                  onPressed: () {
                    context.read<AuthenticationService>().signUp(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
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
                      iconSrc : "assets/social media/youtube.png",
                      press: () {
                        context.read<AuthenticationService>().signInWithGoogle();
                      }
                  ),
                  SocialIcon(
                    iconSrc: "assets/social media/facebook.png",
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
