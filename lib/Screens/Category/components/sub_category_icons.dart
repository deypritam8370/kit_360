import 'package:flutter/material.dart';

class SubCategoryIcons extends StatelessWidget {
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
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
              gridItem(Icons.airport_shuttle),
              gridItem(Icons.add_shopping_cart),
              gridItem(Icons.arrow_drop_down_circle),
              gridItem(Icons.bluetooth_searching),
              gridItem(Icons.add_location),
              gridItem(Icons.arrow_drop_down_circle),
            ],
          ),
        ),
      ],
    );
  }
}

gridItem(icon) {
  return Column(
    children: <Widget>[
      CircleAvatar(
        radius: 30,
        child: Icon(
          icon,
          size: 30.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepOrange.withOpacity(0.9),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "Birthday",
        style: TextStyle(
          fontSize: 18.0,
        ),
      )
    ],
  );
}