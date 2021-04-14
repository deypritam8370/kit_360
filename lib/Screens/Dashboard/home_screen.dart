import 'package:flutter/material.dart';
//import 'package:kit_360/Components/change_theme_button_widget.dart';
import 'package:kit_360/Screens/Menu/components/menubar.dart';
import 'package:kit_360/Screens/Dashboard/components/search_bar_area_dashboard.dart';
import 'package:kit_360/Screens/Dashboard/components/category_area.dart';

class HomeScreen extends StatelessWidget {
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
            SearchBarAreaDashboard(), //below search bar to end
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
