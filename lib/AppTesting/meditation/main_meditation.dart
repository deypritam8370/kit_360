import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kit_360/AppTesting/meditation/product_meditation.dart';
import 'package:kit_360/AppTesting/meditation/product_yoga.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
import 'package:page_transition/page_transition.dart';

class MainMeditation extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MainMeditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meditation'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
      ),
      //backgroundColor: Color(0xfff8f8f8),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.43,
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff5ceb8),
                child: Container(
                  margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
                  alignment: Alignment.centerLeft,
                  // decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage('asset/extra/path.png'),
                  //         fit: BoxFit.contain)),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   padding: EdgeInsets.all(20),
              //   child: Text(
              //     "Good Morning \nJohn",
              //     style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              //   ),
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width * 0.9,
              //   padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(40))),
              //   child: Row(
              //     children: <Widget>[
              //       Icon(
              //         Icons.search,
              //         size: 30,
              //       ),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Expanded(
              //         child: TextField(
              //           decoration: InputDecoration(
              //               border: InputBorder.none,
              //               hintText: 'Search',
              //               hintStyle: TextStyle(fontSize: 20)),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  children: <Widget>[
                    // categoryWidget('img1', "Diet Recommendation"),
                    // categoryWidget('img2', "Kegel Exercise"),
                    categoryWidget('img3', "Meditation", ProductMeditation()),
                    categoryWidget('img4', "Yoga", ProductYoga()),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                //color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.calendar),
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.dumbbell,
                          color: Colors.orange,
                        ),
                        Text(
                          'All Exercise',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container categoryWidget(String img, String title, Widget nextScreen) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 1,
              offset: Offset(0, 10),
            )
          ]),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                  duration: const Duration(milliseconds: 500),
                  alignment: Alignment.topRight,
                  type: PageTransitionType.scale,
                  child: nextScreen));
          // openProductPage('$img', '$title');
        },
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/med/$img.png'),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                '$title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  // void openProductPage(String img, String title) {
  //   Navigator.pushNamed(context, '$ProductMeditation()',
  //       arguments: {'image': '$img', 'title': '$title'});
  // }
}
