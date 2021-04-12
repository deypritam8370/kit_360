import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({this.duration, this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => this.goToPage),
      );
    });

    return Scaffold(
      body: Container(
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Icon(
          Icons.favorite_outlined, color: Colors.white, size: 100,
        ),
      ),
    );
  }
}
