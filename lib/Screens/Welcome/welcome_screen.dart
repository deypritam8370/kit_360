import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Login/login_screen.dart';
import 'package:kit_360/Screens/SignUp/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return SafeArea(
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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          SizedBox(height: size.height * 0.05),
          ClipOval(
            child: Image(
                image: AssetImage("assets/images/kit360logo.png"),
                height: size.height * 0.20),
          ),
          SizedBox(height: size.height * 0.05),
          ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          ClipRRect(
            borderRadius: BorderRadius.circular(29),
            // margin: EdgeInsets.symmetric(vertical: 10),
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            // width: size.width * 0.8,
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
              child: Text(
                'SIGN UP',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
