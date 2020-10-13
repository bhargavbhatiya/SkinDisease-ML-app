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
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text(
                //   "SkinShine",
                //   style: GoogleFonts.dancingScript(
                //       color: Colors.white,
                //       fontSize: 30,
                //       fontWeight: FontWeight.w900),
                // ),
                // SizedBox(height: 10),
                Container(
                    child: Image.asset(
                  "assets/SkinShine with text.png",
                  width: 137,
                  height: 137,
                ))
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(14, 49, 80, 1),
            ),
          ),
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
