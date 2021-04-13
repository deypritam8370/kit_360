import 'package:flutter/material.dart';

gridItem(icon, txt) {
  return Column(
    children: <Widget>[
      CircleAvatar(
        radius: 30,
        child: Icon(
          icon,
          size: 30.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.black12.withOpacity(0.9),
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

  IconData icon;
  String txt;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 300,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              children: <Widget>[
                gridItem(Icons.airport_shuttle, "Happy"),
                gridItem(Icons.airport_shuttle, "Happy"),
                gridItem(Icons.airport_shuttle, "Happy"),
                gridItem(Icons.airport_shuttle, "Happy"),
                gridItem(Icons.airport_shuttle, "Happy"),
                gridItem(Icons.airport_shuttle, "Happy"),
                gridItem(Icons.airport_shuttle, "Happy"),
                gridItem(Icons.airport_shuttle, "Happy"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

