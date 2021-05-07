import 'package:flutter/material.dart';
import 'package:kit_360/AppTesting/notes/pages/home.dart';

class NoteUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteUp',
      theme: ThemeData(
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
