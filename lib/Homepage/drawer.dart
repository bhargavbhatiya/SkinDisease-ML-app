import 'package:flutter/material.dart';
import 'package:skin_ML/Homepage/DiseasesInfoPage.dart';
import 'package:skin_ML/ourteam.dart';
import 'package:skin_ML/news/newspage.dart';
import 'package:skin_ML/disease_predict_model.dart';
import 'package:skin_ML/dailyproblems.dart';
import 'package:skin_ML/chatbot.dart';
import '23DiseasesDataPage.dart';

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
            title: Text('News'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Chat'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyBot()),
              );
            },
          ),
          ListTile(
            title: Text('Read about diseases'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiseasesInfoPage()),
              );
            },
          ),
          ListTile(
            title: Text('Solve daily problems'),
            onTap: () {

            },
          ),
          ListTile(
            title: Text('Detect Disease'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ML_Model()),
              );
            },
          ),
          ListTile(
            title: Text('About us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OurTeam()),
              );
            },
          )
        ],
      ),
    );
  }
}
