import 'package:flutter/cupertino.dart';
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
                  Image.asset(
                    'assets/images/social-media.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "UTILITY",
                    textAlign: TextAlign.center,
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
                  Image.asset(
                    'assets/images/social-media.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "PRODUCTIVITY",
                    textAlign: TextAlign.center,
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
                  Image.asset(
                    'assets/images/social-media.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "SOCIAL MEDIA",
                    textAlign: TextAlign.center,
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
                  Image.asset(
                    'assets/images/social-media.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "ENTERTAINMENT",
                    textAlign: TextAlign.center,
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
                  Image.asset(
                    'assets/images/social-media.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "SHOPPING AND PAYMENTS",
                    textAlign: TextAlign.center,
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
                  Image.asset(
                    'assets/images/social-media.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "HEALTH AND FITNESS",
                    textAlign: TextAlign.center,
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
                  Image.asset(
                    'assets/images/news.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "NEWS",
                    textAlign: TextAlign.center,
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
                  Image.asset(
                    'assets/images/education.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "EDUCATION",
                    textAlign: TextAlign.center,
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
