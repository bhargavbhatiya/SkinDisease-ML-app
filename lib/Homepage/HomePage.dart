import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:skin_ML/Homepage/BottomNavigationBar.dart';
import 'package:skin_ML/Homepage/drawer.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skincare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Skincare'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/opening.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Solve your everyday problems: ",
              textAlign: TextAlign.left,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white54),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 100.0,
                child: Center(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 160.0,
                        child: Text(
                          "Acne",
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 160.0,
                        height: 30.0,
                        child: Text(
                          "Acne",
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        width: 160.0,
                        height: 30.0,
                        child: Text(
                          "Acne",
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text("Facing an issue: \n Scan your image and get instant results"),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/opening.jpg"),
              ),
            ),
            Text("Clear your doubts: "),
            SizedBox(height: 30),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.green,
                    height: 70.0,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 70.0,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text("Today's Tip"),
            SizedBox(height: 20),
            Image.asset("assets/opening.jpg"),
            SizedBox(height: 20),
            Text("Stay Updated with latest news"),
            SizedBox(height: 30.0),
            Container(
              decoration: BoxDecoration(color: Colors.white54),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 100.0,
                child: Center(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 160.0,
                        child: Text(
                          "Acne",
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 160.0,
                        height: 30.0,
                        child: Text(
                          "Acne",
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 160.0,
                        height: 30.0,
                        child: Text(
                          "Acne",
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyNavBar(),
    );
  }
}
