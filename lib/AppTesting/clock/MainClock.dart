import 'dart:math';

import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';

class MainClock extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MainClock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clock'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
      ),
      //backgroundColor: Colors.green,
      body: Center(
        child: AnalogClock(
          decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.black),
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                  .shade200,
              shape: BoxShape.circle),
          width: 300.0,
          isLive: true,
          hourHandColor: Colors.black,
          minuteHandColor: Colors.black,
          showSecondHand: true,
          numberColor: Colors.black,
          showNumbers: true,
          textScaleFactor: 1.5,
          showTicks: true,
          showDigitalClock: true,
          digitalClockColor: Colors.black,
          datetime: DateTime(2020, 8, 4, 9, 11, 0),
        ),
      ),
    );
  }
}
