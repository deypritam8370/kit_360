import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Dashboard/home_screen.dart';
import 'package:kit_360/Screens/Menu/menu_screen.dart';
import 'package:kit_360/constants.dart';
import 'package:kit_360/Screens/Welcome/welcome_screen.dart';
import 'package:kit_360/ThemeUI/theme_provider.dart';

void main() => runApp(Kit360());

class Kit360 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '360 KIT',
      // theme: ThemeData(
      //   primaryColor: kPrimaryColor,
      //   scaffoldBackgroundColor: Colors.white,
      // ),
      //themeMode: themeProvider.themeMode,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: HomeScreen(),
    );
  }
}
