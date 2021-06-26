import 'package:flutter/material.dart';
import 'package:kit_360/AppTesting/step tracker/main_tracker.dart';
//import 'package:kit_360/AppTesting/step tracker/my_colours.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';

class IntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Step Tracker'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/extra/intro.png'),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   width: size.width * 0.75,
            //   child: Text(
            //     "30 Days Fitness Challenges",
            //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            Text(
              " Track your fitness level\n Calories sleep and training.\n Health is Wealth",
              style: TextStyle(/*color: Colors.black54,*/ height: 1.5),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Spacer(),
                RawMaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  elevation: 2.0,
                  fillColor: Colors.deepOrange,
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15),
                  shape: CircleBorder(),
                )
              ],
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
