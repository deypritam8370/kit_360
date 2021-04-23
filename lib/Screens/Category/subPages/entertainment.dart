import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/components/search_bar_area_sub_category.dart';
import 'package:kit_360/Screens/Category/components/sub_category_area.dart';
import 'package:kit_360/Screens/Menu/components/menu_bar.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/SearchScreen.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
import 'package:page_transition/page_transition.dart';

class Entertainment extends StatefulWidget {
  @override
  _EntertainmentState createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuBar(),
      appBar: AppBar(
        title: Text("360 KIT"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          alignment: Alignment.topRight,
                          type: PageTransitionType.scale,
                          child: SearchScreen(countryModelListGlobal)));
                },
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
        ],
        actionsIconTheme:
        IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/entertainment/entertainment.png',
                        alignment: Alignment.center,
                        height: size.height * 0.15,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        'ENTERTAINMENT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: size.height * 0.05),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search for Apps",
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.filter_list),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide:
                        BorderSide(color: Colors.grey[300], width: 1),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 18.0),
                    ),
                  )
                ],
              ),
            ),
            SubCategoryArea(),
          ],
        ),
      ),
    );
  }
}
