import 'package:flutter/material.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';

class MainVoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VOICE RECORDER',
          //style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
        //backgroundColor: Colors.blueGrey[900],
        //foregroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(100.0),
          height: 150,
          width: 150,
          child: Icon(
            Icons.keyboard_voice_sharp,
            color: Colors.white,
            size: 100,
          ),
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
            //image:Icon(Icons.keyboard_voice_sharp) ,
          ),
        ),
      ),
    );
  }
}
