import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_ML/Homepage/HomePage.dart';
import 'package:skin_ML/services/disease_predict_model.dart';
import 'package:skin_ML/services/chatbot.dart';
import 'package:skin_ML/login.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(
      MaterialApp(
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => MyApp(),
      },
  ));
}