import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/components/search_bar_area_sub_category.dart';
import 'package:kit_360/Screens/Category/components/sub_category_area.dart';
import 'package:kit_360/Screens/Dashboard/components/category_area.dart';
import 'package:kit_360/Screens/Menu/menu_bar.dart';
import 'package:kit_360/SearchBar/CategorySearchScreen.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/SearchScreen.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
import 'package:kit_360/WebView/news/AajtakWeb.dart';
import 'package:kit_360/WebView/news/AbpWeb.dart';
import 'package:kit_360/WebView/news/BbcNews.dart';
import 'package:kit_360/WebView/news/BloombergWeb.dart';
import 'package:kit_360/WebView/news/DailyHuntWeb.dart';
import 'package:kit_360/WebView/news/GoogleNewsWeb.dart';
import 'package:kit_360/WebView/news/GuardianWeb.dart';
import 'package:kit_360/WebView/news/IndiaTodayWeb.dart';
import 'package:kit_360/WebView/news/InshortsWeb.dart';
import 'package:kit_360/WebView/news/NdtvWeb.dart';
import 'package:kit_360/WebView/news/ZeeNewsWeb.dart';
import 'package:page_transition/page_transition.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<CountryModel> countryModelList = <CountryModel>[
    CountryModel('Aajtak', 'news/Aajtak', AajtakWeb()),
    CountryModel('ABP News', 'news/ABP news', AbpWeb()),
    CountryModel('BBC News', 'news/BBC News', BbcNewsWeb()),
    CountryModel('Bloomberg', 'news/Bloomberg', BloombergWeb()),
    CountryModel('Daily Hunt', 'news/Daily Hunt', DailyHuntWeb()),
    CountryModel('Google News', 'news/Google News', GoogleNewsWeb()),
    CountryModel('India Today', 'news/India Today', IndiaTodayWeb()),
    CountryModel('Inshorts', 'news/Inshorts', InshortsWeb()),
    CountryModel('NDTV news', 'news/NDTV', NdtvWeb()),
    CountryModel('The Guardian', 'news/The Guardian', GuardianWeb()),
    CountryModel('ZeeNews', 'news/Zee News', ZeeNewsWeb()),
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
      drawer: Body(),
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
                        'assets/news/news.png',
                        alignment: Alignment.center,
                        height: size.height * 0.15,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        'NEWS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: size.height * 0.05),
                    ],
                  ),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: "Search for Apps",
                  //     filled: true,
                  //     prefixIcon: Icon(Icons.search),
                  //     suffixIcon: Icon(Icons.filter_list),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(24.0),
                  //       borderSide:
                  //       BorderSide(color: Colors.grey[300], width: 1),
                  //     ),
                  //     contentPadding: EdgeInsets.symmetric(
                  //         horizontal: 18.0, vertical: 18.0),
                  //   ),
                  // )
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
                          builder: (context) => AajtakWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/Aajtak.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Aajtak",
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
                          builder: (context) => AbpWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/ABP news.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "ABP News",
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
                          builder: (context) => BbcNewsWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/BBC News.png',
                            width: 80,
                            height: 70,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "BBC News",
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
                          builder: (context) => BloombergWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/Bloomberg.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Bloomberg",
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
                          builder: (context) => DailyHuntWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/Daily Hunt.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Daily Hunt",
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
                          builder: (context) => GoogleNewsWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/Google News.png',
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
                          builder: (context) => IndiaTodayWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/India Today.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "India Today",
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
                          builder: (context) => InshortsWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/Inshorts.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Inshorts",
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
                          builder: (context) => NdtvWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/NDTV.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "NDTV News",
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
                          builder: (context) => GuardianWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/The Guardian.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "The Guardian News",
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
                          builder: (context) => ZeeNewsWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/news/Zee News.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "ZEE News",
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
