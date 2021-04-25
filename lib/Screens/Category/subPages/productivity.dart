import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/components/search_bar_area_sub_category.dart';
import 'package:kit_360/Screens/Category/components/sub_category_area.dart';
import 'package:kit_360/Screens/Dashboard/components/category_area.dart';
import 'package:kit_360/Screens/Menu/components/menu_bar.dart';
import 'package:kit_360/SearchBar/CategorySearchScreen.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/SearchScreen.dart';
import 'package:kit_360/SearchBar/next_screen.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/facebook_web.dart';
import 'package:page_transition/page_transition.dart';

class Productivity extends StatefulWidget {
  @override
  _ProductivityState createState() => _ProductivityState();
}

class _ProductivityState extends State<Productivity> {
  List<CountryModel> countryModelList = <CountryModel>[
    CountryModel('Calendar', 'productivity/calender2', NextScreen()),
    CountryModel('Notes', 'productivity/notes', NextScreen()),
    CountryModel('Reminder', 'productivity/reminder', NextScreen()),
    CountryModel(
        'Screen Recorder', 'productivity/screen-recorder', NextScreen()),
    CountryModel('Sticky Notes', 'productivity/sticky-notes', NextScreen()),
    CountryModel('To Do List', 'productivity/to-do-list', NextScreen()),
    CountryModel('Voice Recorder', 'productivity/voice-recorder', NextScreen())
  ];
  @override
  void initState() {
    // TODO: implement initState
    countryModelListGlobal2 = countryModelList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuBar(),
      appBar: AppBar(
        title: Text("360 KIT"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
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
                          child:
                              CategorySearchScreen(countryModelListGlobal2)));
                },
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/productivity/productivity.png',
                        alignment: Alignment.center,
                        height: size.height * 0.15,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        'PRODUCTIVITY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: size.height * 0.05),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search for Apps",
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.filter_list),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide:
                            BorderSide(color: Colors.grey[300], width: 1),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 18.0),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.9,
                ),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FacebookWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/productivity/calender2.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Calender",
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
                          builder: (context) => FacebookWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/productivity/notes.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Notes",
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
                          builder: (context) => FacebookWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/productivity/reminder.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Reminder",
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
                          builder: (context) => FacebookWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/productivity/to-do-list.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "To Do List",
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
                          builder: (context) => FacebookWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/productivity/sticky-notes.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Sticky Notes",
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
                          builder: (context) => FacebookWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/productivity/voice-recorder.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Voice Recorder",
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
                          builder: (context) => FacebookWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/productivity/screen-recorder.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Screen Recorder",
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
            ),
          ],
        ),
      ),
    );
  }
}
