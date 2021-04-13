import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/subPages/education.dart';
import 'package:kit_360/Screens/Category/subPages/entertainment.dart';
import 'package:kit_360/Screens/Category/subPages/health_and_fitness.dart';
import 'package:kit_360/Screens/Category/subPages/news.dart';
import 'package:kit_360/Screens/Category/subPages/productivity.dart';
import 'package:kit_360/Screens/Category/subPages/shopping_and_payments.dart';
import 'package:kit_360/Screens/Category/subPages/social_media.dart';
import 'package:kit_360/Screens/Category/subPages/utility.dart';

class CategoryArea extends StatefulWidget {
  @override
  _CategoryAreaState createState() => _CategoryAreaState();
}

class _CategoryAreaState extends State<CategoryArea> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: GridView(
        padding: EdgeInsets.only(left: 10, right: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.0,
        ),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   data.img,
                  //   width: 42,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "UTILITY",
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Productivity(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   data.img,
                  //   width: 42,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "PRODUCTIVITY",
                    style: TextStyle(
                      //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SocialMedia(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   data.img,
                  //   width: 42,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "SOCIAL MEDIA",
                    style: TextStyle(
                      //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Entertainment(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   data.img,
                  //   width: 42,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "ENTERTAINMENT",
                    style: TextStyle(
                      //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Shopping(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   data.img,
                  //   width: 42,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "SHOPPING AND PAYMENTS",
                    style: TextStyle(
                      //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HealthAndFitness(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   data.img,
                  //   width: 42,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "HEALTH AND FITNESS",
                    style: TextStyle(
                      //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => News(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   data.img,
                  //   width: 42,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "NEWS",
                    style: TextStyle(
                      //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Education(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   data.img,
                  //   width: 42,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "EDUCATION",
                    style: TextStyle(
                      //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
