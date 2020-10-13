import 'package:flutter/material.dart';

class OurTeam extends StatefulWidget {
  @override
  _OurTeamState createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
          backgroundColor: Color.fromRGBO(14, 49, 80, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50,),
                Text("Team MSD-007",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Image.asset("assets/deep.jpg",),
                  padding: EdgeInsets.symmetric(horizontal: 30)
                ),
                SizedBox(height: 20,),
                Text("Deep Patel",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    child: Image.asset("assets/bhatiya.jpg",),
                    padding: EdgeInsets.symmetric(horizontal: 30)
                ),
                SizedBox(height: 20,),
                Text("Bhargav Bhatiya",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    child: Image.asset("assets/mansi.jpg",),
                    padding: EdgeInsets.symmetric(horizontal: 30)
                ),
                SizedBox(height: 20,),
                Text("Mansi Kalaria",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    child: Image.asset("assets/sweta.jpg",),
                    padding: EdgeInsets.symmetric(horizontal: 30)
                ),
                SizedBox(height: 20,),
                Text("Sweta Kyada",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20,),
                Text("Students of Dharmsinh Desai University"),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      );
  }
}