// import 'package:flutter/material.dart';
// import 'package:kit_360/Screens/Dashboard/home_screen.dart';
// import 'package:provider/provider.dart';
// import 'package:kit_360/ThemeUI/theme_provider.dart';
//
// void main() => runApp(Kit360());
//
// class Kit360 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => ChangeNotifierProvider(
//         create: (context) => ThemeProvider(),
//         builder: (context, _) {
//           final themeProvider = Provider.of<ThemeProvider>(context);
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: '360 KIT',
//             themeMode: themeProvider.themeMode,
//             theme: MyThemes.lightTheme,
//             darkTheme: MyThemes.darkTheme,
//             //home: SplashPage(duration: 3, goToPage: HomeScreen()),
//             home: HomeScreen(),
//           );
//         },
//       );
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Dashboard/home_screen.dart';
import 'package:kit_360/Screens/Login/login_screen.dart';
import 'package:kit_360/Screens/Welcome/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_auth_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Kit360());
}

class Kit360 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          initialData: null,
          create: (context) => context.read<AuthenticationService>().authStateChanges,
        )
      ],
      child: MaterialApp(
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return HomeScreen();
    }
    return WelcomeScreen();
  }
}

// class Kit360 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => ChangeNotifierProvider(
//         create: (context) => ThemeProvider(),
//         builder: (context, _) {
//           final themeProvider = Provider.of<ThemeProvider>(context);
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: '360 KIT',
//             themeMode: themeProvider.themeMode,
//             theme: MyThemes.lightTheme,
//             darkTheme: MyThemes.darkTheme,
//             //home: SplashPage(duration: 3, goToPage: HomeScreen()),
//             home: HomeScreen(),
//           );
//         },
//       );
// }