import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {

  String img;
  String txt;
  Function press;

  CategoryCards({this.img, this.txt, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10.0),
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
              img,
              width: 42,
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              txt,
              style: TextStyle(
                //color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
