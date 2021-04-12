import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/components/search_bar_area_sub_category.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MenuBar(),
      // appBar: AppBar(
      //   title: Text("360 KIT"),
      // ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchBarAreaSubCategory(),
          ],
        ),
      ),
    );
  }
}

