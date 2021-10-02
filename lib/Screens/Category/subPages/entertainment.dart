import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/components/search_bar_area_sub_category.dart';
import 'package:kit_360/Screens/Category/components/sub_category_area.dart';
import 'package:kit_360/Screens/Dashboard/components/category_area.dart';
import 'package:kit_360/Screens/Menu/menu_bar.dart';
import 'package:kit_360/SearchBar/CategorySearchScreen.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/SearchScreen.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
import 'package:kit_360/WebView/entertainment/AirtelXstreamWeb.dart';
import 'package:kit_360/WebView/entertainment/GaanaWeb.dart';
import 'package:kit_360/WebView/entertainment/HotstarWeb.dart';
import 'package:kit_360/WebView/entertainment/SonyLivWeb.dart';
import 'package:kit_360/WebView/entertainment/SpotifyWeb.dart';
import 'package:kit_360/WebView/entertainment/VootWeb.dart';
import 'package:kit_360/WebView/entertainment/WynkMusicWeb.dart';
import 'package:kit_360/WebView/entertainment/Zee5Web.dart';
import 'package:page_transition/page_transition.dart';

class Entertainment extends StatefulWidget {
  @override
  _EntertainmentState createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {

  List<CountryModel> countryModelList = <CountryModel>[
  CountryModel('Airtel Xstream', 'entertainment/Airtel Xstream', AirtelXstreamWeb()),
    CountryModel('Gaana', 'entertainment/Gaana', GaanaWeb()),
    CountryModel('Hotstar', 'entertainment/Hotstar', HotstarWeb()),
    CountryModel('SonyLiv', 'entertainment/Sony Liv', SonyLivWeb()),
    CountryModel('Spotify', 'entertainment/spotify', SpotifyWeb()),
    CountryModel('Voot', 'entertainment/Voot', VootWeb()),
    CountryModel('Wynk Music', 'entertainment/Wynk Music', WynkMusicWeb()),
    CountryModel('Zee5', 'entertainment/Zee5', Zee5Web()),
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
                          child: CategorySearchScreen(countryModelListGlobal)));
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
                        'assets/entertainment/entertainment.png',
                        alignment: Alignment.center,
                        height: size.height * 0.15,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        'ENTERTAINMENT',
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
                          builder: (context) => AirtelXstreamWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/entertainment/Airtel Xstream.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Airtel Xstream",
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
                          builder: (context) => GaanaWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/entertainment/Gaana.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Gaana",
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
                          builder: (context) => HotstarWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/entertainment/Hotstar.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Hotstar",
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
                          builder: (context) => SonyLivWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/entertainment/Sony Liv.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "SonyLiv",
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
                          builder: (context) => SpotifyWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/entertainment/spotify.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Spotify",
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
                          builder: (context) => VootWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/entertainment/Voot.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Voot",
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
                          builder: (context) => WynkMusicWeb(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/entertainment/Wynk Music.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Wynk Music",
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
                          builder: (context) => Zee5Web(),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/entertainment/Zee5.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Zee5",
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
