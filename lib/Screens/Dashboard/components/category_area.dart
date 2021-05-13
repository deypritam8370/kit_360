import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/subPages/education.dart';
import 'package:kit_360/Screens/Category/subPages/entertainment.dart';
import 'package:kit_360/Screens/Category/subPages/health_and_fitness.dart';
import 'package:kit_360/Screens/Category/subPages/news.dart';
import 'package:kit_360/Screens/Category/subPages/productivity.dart';
import 'package:kit_360/Screens/Category/subPages/shopping_and_payments.dart';
import 'package:kit_360/Screens/Category/subPages/social_media.dart';
import 'package:kit_360/Screens/Category/subPages/utility.dart';
import 'package:kit_360/SearchBar/next_screen.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/blogger_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/facebook_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/github_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/instagram_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/linkedin_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/pinterest_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/quora_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/reddit_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/twitter_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/yahoo_web.dart';
import 'package:kit_360/WebView/Social_Media/Web_Social_Media/youtube_web.dart';

class CountryModel {
  String countryName;
  String countryCode;
  Widget tap;
  @override
  String toString() {
    return '$countryName $countryCode';
  }

  CountryModel(this.countryName, this.countryCode, this.tap);
}

class CategoryArea extends StatefulWidget {
  @override
  _CategoryAreaState createState() => _CategoryAreaState();
}

class _CategoryAreaState extends State<CategoryArea> {

  List<CountryModel> countryModelList = <CountryModel>[
    CountryModel('Calendar', 'productivity/calender2', NextScreen()),
    CountryModel('Notes', 'productivity/notes', NextScreen()),
    CountryModel('Reminder', 'productivity/reminder', NextScreen()),
    CountryModel(
        'Screen Recorder', 'productivity/screen-recorder', NextScreen()),
    CountryModel('Sticky Notes', 'productivity/sticky-notes', NextScreen()),
    CountryModel('To Do List', 'productivity/to-do-list', NextScreen()),
    CountryModel('Voice Recorder', 'productivity/voice-recorder', NextScreen()),
    CountryModel(
        'Blood Oxygen', 'health and fitness/blood-oxygen', NextScreen()),
    CountryModel(
        'BMI Calculator', 'health and fitness/bmi-calculator', NextScreen()),
    CountryModel('Calories Calculator',
        'health and fitness/calories-calculator', NextScreen()),
    CountryModel('Heart Rate', 'health and fitness/heart-rate', NextScreen()),
    CountryModel('Meditation', 'health and fitness/meditation', NextScreen()),
    CountryModel(
        'Step Tracker', 'health and fitness/step-tracker', NextScreen()),
    CountryModel(
        'Stress Notedown', 'health and fitness/stress-notedown', NextScreen()),
    CountryModel(
        'Water Tracker', 'health and fitness/water-tracker', NextScreen()),
    CountryModel(
        'Women Health', 'health and fitness/women-health', NextScreen()),
    CountryModel(
        'Workout Tracker', 'health and fitness/workout-tracker', NextScreen()),
    CountryModel('Barcode Scanner', 'utility/barcode-scanner-2', NextScreen()),
    CountryModel('Calculator', 'utility/calculator', NextScreen()),
    CountryModel('Compass', 'utility/compass', NextScreen()),
    CountryModel('Dictionary', 'utility/dictionary', NextScreen()),
    CountryModel('Speed Meter', 'utility/internet-speedmeter', NextScreen()),
    CountryModel('Torch', 'utility/torch', NextScreen()),
    CountryModel('Translator', 'utility/translator', NextScreen()),
    CountryModel('Weather', 'utility/weather', NextScreen()),
    CountryModel('Facebook', 'social media/facebook', FacebookWeb()),
    CountryModel('Blogger', 'social media/blogger', BloggerWeb()),
    CountryModel('Github', 'social media/github', GithubWeb()),
    CountryModel('Instagram', 'social media/instagram', InstagramWeb()),
    CountryModel('Linkedin', 'social media/linkedin', LinkedinWeb()),
    CountryModel('Pinterest', 'social media/pinterest', PinterestWeb()),
    CountryModel('Quora', 'social media/quora', QuoraWeb()),
    CountryModel('Reddit', 'social media/reddit', RedditWeb()),
    CountryModel('Tumblr', 'social media/tumblr', TwitterWeb()),
    CountryModel('Twitter', 'social media/twitter', TwitterWeb()),
    CountryModel('Yahoo', 'social media/yahoo', YahooWeb()),
    CountryModel('Youtube', 'social media/youtube', YoutubeWeb())
  ];

  @override
  void initState() {
    // TODO: implement initState
    countryModelListGlobal = countryModelList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.0,
        ),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Utility(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
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
                    'assets/utility/utility.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "UTILITY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 16,
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
                  builder: (context) => Productivity(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
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
                    'assets/productivity/productivity.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "PRODUCTIVITY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 16,
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
                  builder: (context) => SocialMedia(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
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
                    'assets/social media/social_media.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "SOCIAL MEDIA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 16,
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
                  builder: (context) => Entertainment(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
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
                    'assets/entertainment/entertainment.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "ENTERTAINMENT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 16,
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
                  builder: (context) => Shopping(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
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
                    'assets/shopping and payments/shopping.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "SHOPPING AND PAYMENTS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 16,
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
                  builder: (context) => HealthAndFitness(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
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
                    'assets/health and fitness/health_and_fitness.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "HEALTH AND FITNESS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 16,
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
                  builder: (context) => News(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
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
                    'assets/news/news.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "NEWS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 16,
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
                  builder: (context) => Education(),
                ),
              );
            },
            child: Container(
              //margin: EdgeInsets.all(10.0),
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
                    'assets/education/education.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "EDUCATION",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 16,
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
    );
  }
}
