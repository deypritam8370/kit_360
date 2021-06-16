import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kit_360/firebase_auth_service.dart';

class RoundedButton extends StatelessWidget {
  // final String text;
  // final Function press;
  // final Color color, textColor;
  // const RoundedButton({
  //   Key key,
  //   this.text,
  //   this.press,
  //   this.color = kPrimaryColor,
  //   this.textColor = Colors.white,
  // }) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          ),
          onPressed: () {
            context.read<AuthenticationService>().signIn(
              email: emailController.text.trim(),
              password: passwordController.text.trim(),
            );
          },
          child: Text(
            'LOGIN',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
