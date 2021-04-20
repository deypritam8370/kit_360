import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/subPages/utility.dart';

class SubCategoryArea extends StatefulWidget {
  @override
  _SubCategoryAreaState createState() => _SubCategoryAreaState();
}

class _SubCategoryAreaState extends State<SubCategoryArea> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        //padding: EdgeInsets.only(left: 10, right: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          //crossAxisSpacing: 15,
          //mainAxisSpacing: 15,
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
            child: ClipOval(
              child: Container(
                //margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.grey[400],
                //   //   width: 2,
                //   // ),
                //   //borderRadius: BorderRadius.circular(20),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/utility.png',
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: ClipOval(
              child: Container(
                //margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.grey[400],
                //   //   width: 2,
                //   // ),
                //   //borderRadius: BorderRadius.circular(20),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/utility.png',
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: ClipOval(
              child: Container(
                //margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.grey[400],
                //   //   width: 2,
                //   // ),
                //   //borderRadius: BorderRadius.circular(20),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/utility.png',
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: ClipOval(
              child: Container(
                //margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.grey[400],
                //   //   width: 2,
                //   // ),
                //   //borderRadius: BorderRadius.circular(20),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/utility.png',
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: ClipOval(
              child: Container(
                //margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.grey[400],
                //   //   width: 2,
                //   // ),
                //   //borderRadius: BorderRadius.circular(20),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/utility.png',
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: ClipOval(
              child: Container(
                //margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.grey[400],
                //   //   width: 2,
                //   // ),
                //   //borderRadius: BorderRadius.circular(20),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/utility.png',
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: ClipOval(
              child: Container(
                //margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.grey[400],
                //   //   width: 2,
                //   // ),
                //   //borderRadius: BorderRadius.circular(20),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/utility.png',
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: ClipOval(
              child: Container(
                //margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.grey[400],
                //   //   width: 2,
                //   // ),
                //   //borderRadius: BorderRadius.circular(20),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/utility.png',
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
          ),
        ],
      ),
    );
  }
}
