import 'package:flutter/material.dart';

class SearchBarAreaDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          SizedBox(
              height: 16
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Good Morning...",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {
                  ///TODO - TRY TO ADD DRAWER HERE
                },
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          TextField(
             decoration: InputDecoration(
               hintText: "Search for Apps",
               filled: true,
               prefixIcon: Icon(Icons.search),
               suffixIcon: Icon(Icons.keyboard_voice_rounded),
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(24.0),
                 borderSide: BorderSide(color: Colors.grey[300], width: 1),
               ),
               contentPadding:
                   EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
             ),
           ),
        ],
      ),
    );
  }
}
