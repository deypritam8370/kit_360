import 'package:flutter/material.dart';

class SocialMedia extends StatefulWidget {
  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MenuBar(),
      // appBar: AppBar(
      //   title: Text("360 KIT"),
      // ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            top(),
          ],
        ),
      ),
    );
  }
}

top() {
  return Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("dashboard/assets/img.jpg"),
                  radius: 30.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Hi, there",
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
            // IconButton(
            //   icon: Icon(
            //     Icons.notifications,
            //     color: Colors.black38,
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
} //top