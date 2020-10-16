import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_ML/Homepage/HomePage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    debugShowCheckedModeBanner: false,
    routes: {
      '/home': (context) => MyApp(),
    },
  ));
}
