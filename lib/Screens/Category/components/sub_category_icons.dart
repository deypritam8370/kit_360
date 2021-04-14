import 'package:flutter/material.dart';

gridItem(img, txt) {
  return Column(
    children: <Widget>[
      CircleAvatar(
        radius: 35,
        child: Image.asset(img),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        txt,
        style: TextStyle(
          fontSize: 18.0,
        ),
      )
    ],
  );
}

class SubCategoryIcons extends StatelessWidget {

  Image img;
  String txt;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 300,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              children: <Widget>[
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
                gridItem('assets/images/facebook.png', "Happy"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
