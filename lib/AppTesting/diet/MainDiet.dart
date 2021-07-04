import 'dart:math';

import 'package:flutter/material.dart';

import 'package:kit_360/AppTesting/diet/DietDashboard.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';

class MainDiet extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<MainDiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet App'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
      ),
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 100, 25, 25),
          child: Center(
            child: Column(
              children: <Widget>[
                // Image.asset(
                //   'assets/img/illustration.png',
                //   width: 300,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Text(
                  'Your Personal',
                  style: TextStyle(
                    //color: Theme.of(context).accentColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Text(
                  'Diet Controller'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 48,
                    //color: Theme.of(context).primaryColor,
                    //fontFamily: 'Bebas',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                // Text(
                //   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.',
                //   style: TextStyle(
                //     color: Colors.grey,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DietDashboard(),
                      ),
                    );
                  },
                  minWidth: double.infinity,
                  height: 50,
                  child: Text(
                    'Get Started'.toUpperCase(),
                  ),
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]
                      .shade200,
                  //textColor: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                // MaterialButton(
                //   onPressed: () {},
                //   minWidth: double.infinity,
                //   height: 50,
                //   textColor: Theme.of(context).primaryColor,
                //   child: Text(
                //     'Sign In'.toUpperCase(),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
