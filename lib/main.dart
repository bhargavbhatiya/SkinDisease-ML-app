import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:skin_ML/disease_predict_model.dart';
import 'package:skin_ML/chatbot.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/MyApp',
    routes: {
      '/MyApp': (context) => MyApp(),
      '/ML_Model': (context) => ML_Model(),
      '/MyApp2': (context) => MyApp2(),
      // '/dashboard': (context) => DashboardScreen(),
    },
  ));
}

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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => ML_Model(),
        ),
      );
    }
    if (_selectedIndex == 2) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => MyApp2(),
        ),
      );
    }
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
      ),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Detect',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
