import 'package:flutter/material.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/SearchScreen.dart';
import 'package:page_transition/page_transition.dart';

class SearchBarAreaDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Hi, there",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
              // IconButton(
              //   icon: Icon(
              //     Icons.notifications,
              //     color: Colors.black,
              //     size: 30.0,
              //   ),
              //   onPressed: () {
              //     ///TODO - TRY TO ADD DRAWER HERE
              //   },
              // ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          // TextField(
          //    decoration: InputDecoration(
          //      hintText: "Search for Apps",
          //      filled: true,
          //      prefixIcon: Icon(Icons.search),
          //      suffixIcon: Icon(Icons.filter_list),
          //      enabledBorder: OutlineInputBorder(
          //        borderRadius: BorderRadius.circular(24.0),
          //        borderSide: BorderSide(color: Colors.grey[300], width: 1),
          //      ),
          //      contentPadding:
          //          EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
          //    ),
          //  ),
          //)
        ],
      ),
    );
  }
}
