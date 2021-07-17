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
import 'package:kit_360/WebView/education/EdXWeb.dart';
import 'package:kit_360/WebView/education/GeeksForGeeksWeb.dart';
import 'package:kit_360/WebView/education/KhanAcademyWeb.dart';
import 'package:kit_360/WebView/education/UdacityWeb.dart';
import 'package:kit_360/WebView/education/UdemyWeb.dart';
import 'package:kit_360/WebView/education/UnacademyWeb.dart';
import 'package:kit_360/WebView/education/WikipediaWeb.dart';
import 'package:kit_360/WebView/entertainment/AirtelXstreamWeb.dart';
import 'package:kit_360/WebView/entertainment/GaanaWeb.dart';
import 'package:kit_360/WebView/entertainment/HotstarWeb.dart';
import 'package:kit_360/WebView/entertainment/SonyLivWeb.dart';
import 'package:kit_360/WebView/entertainment/SpotifyWeb.dart';
import 'package:kit_360/WebView/entertainment/VootWeb.dart';
import 'package:kit_360/WebView/entertainment/WynkMusicWeb.dart';
import 'package:kit_360/WebView/entertainment/Zee5Web.dart';
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
import 'package:kit_360/WebView/shopping/BewakoofWeb.dart';
import 'package:kit_360/WebView/shopping/BigBazaarWeb.dart';
import 'package:kit_360/WebView/shopping/ClubFactoryWeb.dart';
import 'package:kit_360/WebView/shopping/FlipkartWeb.dart';
import 'package:kit_360/WebView/shopping/LenskartWeb.dart';
import 'package:kit_360/WebView/shopping/LimeroadWeb.dart';
import 'package:kit_360/WebView/shopping/MyntraWeb.dart';
import 'package:kit_360/WebView/shopping/NykaaFashionWeb.dart';
import 'package:kit_360/WebView/shopping/OlxWeb.dart';
import 'package:kit_360/WebView/shopping/SheinWeb.dart';
import 'package:kit_360/WebView/shopping/ShopCluesWeb.dart';
import 'package:kit_360/WebView/shopping/SnapdealWeb.dart';
import 'package:kit_360/WebView/shopping/TataCliqWeb.dart';
import 'package:kit_360/WebView/shopping/Urbanicweb.dart';
import 'package:kit_360/WebView/shopping/WishWeb.dart';
import 'package:kit_360/WebView/shopping/amazonWeb.dart';

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
    CountryModel('Youtube', 'social media/youtube', YoutubeWeb()),
    CountryModel(
        'Airtel Xstream', 'entertainment/Airtel Xstream', AirtelXstreamWeb()),
    CountryModel('Gaana', 'entertainment/Gaana', GaanaWeb()),
    CountryModel('Hotstar', 'entertainment/Hotstar', HotstarWeb()),
    CountryModel('SonyLiv', 'entertainment/Sony Liv', SonyLivWeb()),
    CountryModel('Spotify', 'entertainment/spotify', SpotifyWeb()),
    CountryModel('Voot', 'entertainment/Voot', VootWeb()),
    CountryModel('Wynk Music', 'entertainment/Wynk Music', WynkMusicWeb()),
    CountryModel('Zee5', 'entertainment/Zee5', Zee5Web()),
    CountryModel('Amazon', 'shopping and payments/amazon', AmazonWeb()),
    CountryModel('Bewakoof', 'shopping and payments/bewakoof', BewakoofWeb()),
    CountryModel(
        'Big Bazaar', 'shopping and payments/big bazaar', BigBazaarWeb()),
    CountryModel(
        'Club Factory', 'shopping and payments/club factory', ClubFactoryWeb()),
    CountryModel('Flipkart', 'shopping and payments/Flipkart', FlipkartWeb()),
    CountryModel('Lenskart', 'shopping and payments/lenskart', LenskartWeb()),
    CountryModel('Limeroad', 'shopping and payments/limeroad', LimeroadWeb()),
    CountryModel('Myntra', 'shopping and payments/myntra', MyntraWeb()),
    CountryModel('Nykaa Fashion', 'shopping and payments/nykaa fashion',
        NykaaFashionWeb()),
    CountryModel('OLX', 'shopping and payments/olx', OlxWeb()),
    CountryModel('Shein', 'shopping and payments/shein', SheinWeb()),
    CountryModel(
        'Shopclues', 'shopping and payments/shopclues', ShopCluesWeb()),
    CountryModel('Snapdeal', 'shopping and payments/snapdeal', SnapdealWeb()),
    CountryModel('Tata Cliq', 'shopping and payments/tata cliq', TataCliqWeb()),
    CountryModel('Urbanic', 'shopping and payments/urbanic', UrbanicWeb()),
    CountryModel('Wish', 'shopping and payments/wish', WishWeb()),
    CountryModel('EdX', 'education/EdX', EdXWeb()),
    CountryModel(
        'GeeksforGeeks', 'education/Geeks for Geeks', GeeksForGeeksWeb()),
    CountryModel('Khan Academy', 'education/Khan Academy', KhanAcademyWeb()),
    CountryModel('Udacity', 'education/Udacity', UdacityWeb()),
    CountryModel('Udemy', 'education/Udemy', UdemyWeb()),
    CountryModel('Unacademy', 'education/Unacademy', UnacademyWeb()),
    CountryModel('Wikipedia', 'education/Wikipedia', WikipediaWeb()),
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
