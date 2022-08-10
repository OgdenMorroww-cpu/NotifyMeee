// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notifymeee/screens/sign_up.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ivanka Trump"),
            accountEmail: Text("Ivankatrump@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/ivanka.jpg"),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.account_circle),
            onTap: () {},
          ),
          ListTile(
            title: Text("Notifications"),
            leading: Icon(Icons.notifications),
            onTap: () {},
          ),
          ListTile(
            title: Text("share"),
            leading: Icon(Icons.share),
            onTap: () {},
          ),
          ListTile(
            title: Text("message"),
            leading: Icon(Icons.near_me),
            onTap: () {},
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
            onTap: () {},
          ),
          SizedBox(
            child: MaterialButton(
              textColor: Colors.white,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.5),
              ),
              height: 55.0,
              child: Text("Sign Out"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SignUpPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
