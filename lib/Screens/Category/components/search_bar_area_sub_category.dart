import 'package:flutter/material.dart';

class SearchBarAreaSubCategory extends StatelessWidget {

  SearchBarAreaSubCategory(this.txt);
  String txt;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: size.height * 0.15),
              Text(
                txt,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.05),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Search for Apps",
              filled: true,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.filter_list),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24.0),
                borderSide: BorderSide(color: Colors.grey[300], width: 1),
              ),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
            ),
          )
        ],
      ),
    );
  }
}
