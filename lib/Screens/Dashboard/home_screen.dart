import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:kit_360/Screens/Category/subPages/utility.dart';
import 'package:kit_360/Screens/Menu/menu_bar.dart';
import 'package:kit_360/Screens/Dashboard/components/search_bar_area_dashboard.dart';
import 'package:kit_360/Screens/Dashboard/components/category_area.dart';
import 'package:kit_360/SearchBar/SearchScreen.dart';
import 'package:kit_360/ThemeUI/theme_provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
import 'package:provider/provider.dart';
import 'package:kit_360/main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: '360 KIT',
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            //home: SplashPage(duration: 3, goToPage: HomeScreen()),
            home: HomeScreenExtended(),
          );
        },
      );
}

class HomeScreenExtended extends StatefulWidget {
  @override
  _HomeScreenExtendedState createState() => _HomeScreenExtendedState();
}

class _HomeScreenExtendedState extends State<HomeScreenExtended> {

  @override
  void initState() {

    super.initState();

    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        RemoteNotification notification = message.notification;
        AndroidNotification android = message.notification?.android;
        if (notification != null && android != null) {
          flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/kit360logo',
              ),
            ),
          );
        }
      },
    );

    FirebaseMessaging.onMessageOpenedApp.listen(
      (RemoteMessage message) {
        print('A new onMessageOpenedApp event was published!');
        RemoteNotification notification = message.notification;
        AndroidNotification android = message.notification?.android;
        if (notification != null && android != null) {
          showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text(notification.title),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(notification.body)],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                    child: SearchScreen(countryModelListGlobal),
                  ),
                );
              },
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ),
          ),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchBarAreaDashboard(), //below search bar to end
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "CATEGORY",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                ],
              ),
            ),
            CategoryArea(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
