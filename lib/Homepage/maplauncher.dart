import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

void main() => runApp(MyMap());

class MyMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromRGBO(14, 49, 80, 1)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Skin specialist near you',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,
                child: RaisedButton(
                  color: Color.fromRGBO(14, 49, 80, 1),
                  textColor: Colors.white,
                  onPressed: () =>
                      MapsLauncher.launchQuery('Nearby skin doctor'),
                  child: Text('Skin Specialist near you'),
                ),
              ), /*
              Container(
                width: 250,
                child: RaisedButton(
                  color: Color.fromRGBO(14, 49, 80, 1),
                  textColor: Colors.white,
                  onPressed: () => MapsLauncher.launchCoordinates(
                      20.77, 73.05, 'Your Location'),
                  child: Text('LAUNCH COORDINATES'),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
