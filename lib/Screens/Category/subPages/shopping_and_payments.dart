import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/components/search_bar_area_sub_category.dart';
import 'package:kit_360/Screens/Category/components/sub_category_area.dart';
import 'package:kit_360/Screens/Dashboard/components/category_area.dart';
import 'package:kit_360/Screens/Menu/menu_bar.dart';
import 'package:kit_360/SearchBar/CategorySearchScreen.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/SearchScreen.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
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
import 'package:page_transition/page_transition.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  List<CountryModel> countryModelList = <CountryModel>[
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
                        'assets/shopping_and_payments/shopping.png',
                        alignment: Alignment.center,
                        height: size.height * 0.15,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        'SHOPPING & PAYMENTS',
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
            SubCategoryArea(),
          ],
        ),
      ),
    );
  }
}
