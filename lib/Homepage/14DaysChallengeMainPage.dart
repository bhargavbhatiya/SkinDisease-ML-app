import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:skin_ML/Homepage/14DaysChallengeInfo.dart';

class progress extends StatefulWidget {
  @override
  _progressState createState() => _progressState();
}

class _progressState extends State<progress> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Skincare Challange",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(14, 49, 80, 1),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Take up 15 days glowing & healthy skin challange",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 25,
                  ),
                  FloatingActionButton(
                    heroTag: 1,
                    backgroundColor: Colors.lightGreenAccent,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 1),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 2,
                    backgroundColor: Colors.lightGreenAccent,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 2),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 3,
                    backgroundColor: Colors.lightGreenAccent,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 3),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 4,
                    backgroundColor: Colors.white,
                    child: Text(
                      "4",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 4),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 25,
                  ),
                  FloatingActionButton(
                    heroTag: 5,
                    backgroundColor: Colors.white,
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 5),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 6,
                    backgroundColor: Colors.white,
                    child: Text(
                      "6",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 6),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 7,
                    backgroundColor: Colors.white,
                    child: Text(
                      "7",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 7),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 8,
                    backgroundColor: Colors.white,
                    child: Text(
                      "8",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 8),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 25,
                  ),
                  FloatingActionButton(
                    heroTag: 9,
                    backgroundColor: Colors.white,
                    child: Text(
                      "9",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 9),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 10,
                    backgroundColor: Colors.white,
                    child: Text(
                      "10",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 10),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 11,
                    backgroundColor: Colors.white,
                    child: Text(
                      "11",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 11),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 12,
                    backgroundColor: Colors.white,
                    child: Text(
                      "12",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 12),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 25,
                  ),
                  FloatingActionButton(
                    heroTag: 13,
                    backgroundColor: Colors.white,
                    child: Text(
                      "13",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 13),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    heroTag: 14,
                    backgroundColor: Colors.white,
                    child: Text(
                      "14",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        this.context,
                        // ignore: missing_return
                        MaterialPageRoute(
                          builder: (context) => Challenge(),
                          settings: RouteSettings(arguments: 14),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              new Text(
                "Your Progress:",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              SizedBox(
                height: 20,
              ),
              new CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.214,
                center: new Text(
                  "21.4%",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.purple,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
