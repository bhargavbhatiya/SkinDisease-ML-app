import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.red,
      )),
  home: new MyReminder(),
));

class MyReminder extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyReminder> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    var initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOs = IOSInitializationSettings();
    var initSetttings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOs);

    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return NewScreen(
        payload: payload,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
        title: new Text('Water Reminder'),
        centerTitle: true,
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            Image(
              alignment: Alignment.topCenter,
              height: 400,
              width: 400,
              image: AssetImage("assets/water.jpg"),
              fit: BoxFit.cover,
            ),
            Container(
              width: 200,
              child: RaisedButton(
                color: Color.fromRGBO(14, 49, 80, 1),
                textColor: Colors.white,
                onPressed: repeatedNotification,
                child: new Text(
                  'Start Notification',
                ),
              ),
            ),
            Container(
              width: 200,
              child: RaisedButton(
                color: Color.fromRGBO(14, 49, 80, 1),
                textColor: Colors.white,
                onPressed: cancelNotification,
                child: new Text(
                  'Cancel Notification',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> repeatedNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails('repeating channel id',
        'repeating channel name', 'repeating description');
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: null);
    await flutterLocalNotificationsPlugin.periodicallyShow(
        0,
        'WATER',
        'Time to Drink a glass of water.',
        RepeatInterval.everyMinute,
        platformChannelSpecifics,
        androidAllowWhileIdle: true);
  }

  Future<void> cancelNotification() async {
    await flutterLocalNotificationsPlugin.cancel(0);
  }

  showNotification() async {
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.high, importance: Importance.max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin.show(
        0, 'Flutter devs', 'Flutter Local Notification Demo', platform,
        payload: 'Welcome to the Local Notification demo ');
  }
}

class NewScreen extends StatelessWidget {
  String payload;

  NewScreen({
    @required this.payload,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(payload),
      ),
    );
  }
}
