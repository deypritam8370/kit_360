import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kit_360/firebase_auth_service.dart';
import 'package:provider/provider.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          UserAccountsDrawerHeader(
            accountName: Text(
              'KIT 360',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
            ),
            accountEmail: null,
            currentAccountPicture: Image.asset(
              'assets/images/kit360logo.png',
            ),
          ),
          Divider(thickness: 2),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('FAVOURITES'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('SETTINGS'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('NOTIFICATIONS'),
            onTap: () => null,
          ),
          Divider(thickness: 2),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('ALL OUR APPS'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('RATE US'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('SHARE'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
            onTap: () => null,
          ),
          Divider(thickness: 2),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => SystemNavigator.pop(),
          ),
          ListTile(
            title: Text('LOG OUT'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => context.read<AuthenticationService>().signOut(),
          ),
        ],
      ),
    );
  }
}
