import 'package:flutter/material.dart';
import 'package:kit_360/SearchBar/Constants.dart';
//import 'package:kit_360/SearchBar/SearchScreen2.dart';
import 'package:page_transition/page_transition.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Next Screen'),
        ),
        body: Column(
          children: [
            Text('Welcome'),
          ],
        ),
      ),
    );
  }
}
