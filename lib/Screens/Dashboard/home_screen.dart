import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Menu/components/menu_bar.dart';
import 'package:kit_360/Screens/Dashboard/components/search_bar_area_dashboard.dart';
import 'package:kit_360/Screens/Dashboard/components/category_area.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: MenuBar(),
      appBar: AppBar(
        title: Text("360 KIT"),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchBarAreaDashboard(), //below search bar to end
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "CATEGORY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                ],
              ),
            ),
            CategoryArea(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
