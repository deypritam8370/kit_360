import 'package:flutter/material.dart';
//import 'package:kit_360/Components/change_theme_button_widget.dart';
import 'package:kit_360/Screens/Menu/components/menubar.dart';
import 'package:kit_360/Components/search_bar_area.dart';
import 'package:kit_360/Components/category_area.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuBar(),
      appBar: AppBar(
        title: Text("360 KIT"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchBarArea(), //below search bar to end
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Category",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            CategoryArea(),
          ],
        ),
      ),
    );
  }
}
