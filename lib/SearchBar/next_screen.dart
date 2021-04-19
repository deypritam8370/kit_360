import 'package:flutter/material.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/SearchScreen2.dart';
import 'package:page_transition/page_transition.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Next Screen'),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: const Duration(milliseconds: 500),
                            alignment: Alignment.topRight,
                            type: PageTransitionType.scale,
                            child: SearchScreen2(countryModelListGlobal2)));
                  },
                  child: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: Column(
          children: [
            Text('Welcome'),
          ],
        ),
      ),
    );
  }
}
