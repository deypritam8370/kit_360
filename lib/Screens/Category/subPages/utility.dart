import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/components/search_bar_area_sub_category.dart';

class Utility extends StatefulWidget {
  @override
  _UtilityState createState() => _UtilityState();
}

class _UtilityState extends State<Utility> {
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
