import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('My Account'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Detect Disease'),
            onTap: () {},
          ),
          ListTile(
            title: Text('News'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Solve Doubts'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Talk to Expert'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
