import 'package:flutter/material.dart';
import 'package:kit_360/Components/text_field_container.dart';
import 'package:kit_360/Screens/SignUp/signup_screen.dart';
import 'package:kit_360/Components/already_have_an_account_check.dart';
import 'package:kit_360/Components/rounded_button.dart';
import 'package:kit_360/Components/rounded_input_field.dart';
import 'package:kit_360/Components/rounded_password_field.dart';
import 'package:kit_360/Components/social_icon.dart';
import 'package:kit_360/Components/or_divider.dart';
import 'package:provider/provider.dart';
import 'package:kit_360/firebase_auth_service.dart';
import 'package:kit_360/constants.dart';

class Body extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.1),
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            SizedBox(height: size.height * 0.05),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
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
                    iconSrc: "assets/images/icons8-google.svg",
                    press: () {
                      context
                          .read<AuthenticationService>()
                          .signInWithGoogle();
                    },
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// // import 'package:flutter_auth/Screens/Login/components/background.dart';
// import 'package:kit_360/Screens/SignUp/signup_screen.dart';
// import 'package:kit_360/Components/already_have_an_account_check.dart';
// import 'package:kit_360/Components/rounded_button.dart';
// import 'package:kit_360/Components/rounded_input_field.dart';
// import 'package:kit_360/Components/rounded_password_field.dart';
// // import 'package:flutter_svg/svg.dart';
// import 'package:kit_360/Components/social_icon.dart';
// import 'package:kit_360/Components/or_divider.dart';
//
// class Body extends StatelessWidget {
//   // const Body({
//   //   Key key,
//   // }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Expanded(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "LOGIN",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
//             ),
//             SizedBox(height: size.height * 0.05),
//             // SvgPicture.asset(
//             //   "assets/icons/login.svg",
//             //   height: size.height * 0.35,
//             // ),
//             SizedBox(height: size.height * 0.05),
//             RoundedInputField(
//               hintText: "Your Email",
//               onChanged: (value) {},
//             ),
//             RoundedPasswordField(
//               onChanged: (value) {},
//             ),
//             RoundedButton(
//               text: "LOGIN",
//               press: () {},
//             ),
//             SizedBox(height: size.height * 0.03),
//             AlreadyHaveAnAccountCheck(
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return SignUpScreen();
//                     },
//                   ),
//                 );
//               },
//             ),
//             OrDivider(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SocialIcon(
//                   iconSrc: "assets/icons/googleicon.png",
//                   press: () {},
//                 ),
//                 SocialIcon(
//                   iconSrc: "assets/icons/googleicon.png",
//                   press: () {},
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }