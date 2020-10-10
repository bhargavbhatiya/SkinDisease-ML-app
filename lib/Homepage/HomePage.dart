import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:skin_ML/Homepage/BottomNavigationBar.dart';
import 'package:skin_ML/Homepage/drawer.dart';
import 'package:skin_ML/news/newspage.dart';
import 'package:skin_ML/Homepage/23DiseasesDataPage.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skincare',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(14, 49, 80, 1),
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
  var color3 = Color.fromRGBO(247, 233, 227, 1);
  // var color1 = Color.fromRGBO(14, 49, 80, 1); //Dark purple
  // var color3 = Color.fromRGBO(248, 227, 255, 1);
  // var color4 = Color.fromRGBO(255, 241, 243, 1);
  Map<int, bool> countToValue = <int, bool>{};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('SkinShine'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: color3),
          child: Column(
            children: <Widget>[
              Image.asset('assets/opening.jpg'),
              SizedBox(height: 10),
              Text(
                "Solve your everyday problems: ",
                textAlign: TextAlign.left,
              ),
              Container(
                // decoration: BoxDecoration(color: Colors.white),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 100.0,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
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
                            // color: Color.fromRGBO(18, 164, 217, 1),
                            color: Color.fromRGBO(163, 162, 254, 1),
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
                            color: Color.fromRGBO(252, 96, 100, 1),
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
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30),
              Text(
                  "Facing an issue: \n Scan your image and get instant results"),
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
                    Card(
                      child: Container(
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(9, 17, 55, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Container(
                    //   color: Colors.green,
                    //   height: 70.0,
                    //   width: MediaQuery.of(context).size.width / 3,
                    // ),
                    SizedBox(width: 5),
                    Card(
                      child: Container(
                        height: 120.0,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(229, 33, 103, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Container(
                    //   color: Colors.blue,
                    //   height: 70.0,
                    //   width: MediaQuery.of(context).size.width / 3,
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width - 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Skin Diseases List",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width - 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(229, 33, 103, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width - 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(229, 33, 103, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width - 20,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(229, 33, 103, 1),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0)),
                        ),
                      ),
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          height: 50.0,
                          width: MediaQuery.of(context).size.width - 20,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(229, 33, 103, 1),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0)),
                        ),
                      ),
                      Container(
                        height: 35,
                        padding: EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width - 20,
                        child: FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DiseasesList()),
                            );
                          },
                          child: Text(
                            "See More",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Image.asset("assets/opening.jpg"),
              SizedBox(height: 20),
              Text("Stay Updated with latest news"),
              Container(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewsPage()),
                      );
                    },
                    child: Image.asset("assets/opening.jpg"),
                  ),
              ),
              SizedBox(height: 30.0),
              Container(
                // decoration: BoxDecoration(color: Colors.white54),
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
                            color: Color.fromRGBO(254, 163, 162, 1),
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
                            color: Color.fromRGBO(162, 207, 254, 1),
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
                            color: Color.fromRGBO(254, 162, 207, 1),
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
                            color: Color.fromRGBO(162, 253, 254, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavBar(),
    );
  }
}
