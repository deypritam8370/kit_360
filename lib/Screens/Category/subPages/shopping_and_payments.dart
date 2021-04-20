import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/components/search_bar_area_sub_category.dart';
import 'package:kit_360/Screens/Category/components/sub_category_area.dart';
import 'package:kit_360/Screens/Menu/components/menu_bar.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
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
            SearchBarAreaSubCategory('SHOPPING & PAYMENTS'),
            SubCategoryArea(),
          ],
        ),
      ),
    );
  }
}
