import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            accountEmail: null,
            currentAccountPicture: Image.asset(
              'assets/images/social-media.png',
            ),
            // decoration: BoxDecoration(
            //   //color: Colors.blue,
            //   image: DecorationImage(
            //       fit: BoxFit.fill,
            //       image: NetworkImage(
            //           'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            // ),
          ),
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
          ),
          Divider(),
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
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
