import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Menu/components/menu_bar.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/SearchScreen.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/facebook_web.dart';
import 'package:page_transition/page_transition.dart';

class HealthAndFitness extends StatefulWidget {
  @override
  _HealthAndFitnessState createState() => _HealthAndFitnessState();
}

class _HealthAndFitnessState extends State<HealthAndFitness> {
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
                          child: SearchScreen(countryModelListGlobal)));
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
                        'assets/health_and_fitness/health_and_fitness.png',
                        alignment: Alignment.center,
                        height: size.height * 0.15,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        'HEALTH & FITNESS',
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
                            'assets/health_and_fitness/blood-oxygen.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Blood Oxygen",
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
                            'assets/health_and_fitness/bmi-calculator.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "BMI Calculator",
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
                            'assets/health_and_fitness/calories-calculator.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Calorie Calculator",
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
                            'assets/health_and_fitness/heart-rate.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Heart Rate",
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
                            'assets/health_and_fitness/meditation.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Meditation",
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
                            'assets/health_and_fitness/step-tracker.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Step Tracker",
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
                            'assets/health_and_fitness/stress-notedown.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Stress",
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
                            'assets/health_and_fitness/water-tracker.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Water Track",
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
                            'assets/health_and_fitness/women-health.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Women Health",
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
                            'assets/health_and_fitness/workout-tracker.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Workout Track",
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
