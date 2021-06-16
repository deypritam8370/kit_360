import 'package:flutter/material.dart';
import 'package:kit_360/Components/text_field_container.dart';
import 'package:kit_360/constants.dart';

class RoundedInputField extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
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
    );
  }
}
