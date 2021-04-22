import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Dashboard/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:kit_360/ThemeUI/theme_provider.dart';

void main() => runApp(Kit360());

class Kit360 extends StatelessWidget {
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
            home: HomeScreen(),
          );
        },
      );
}
