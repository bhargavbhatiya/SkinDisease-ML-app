import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_ML/Homepage/HomePage.dart';
import 'package:skin_ML/services/disease_predict_model.dart';
import 'package:skin_ML/services/chatbot.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/MyApp',
      debugShowCheckedModeBanner: false,
      routes: {
        '/MyApp': (context) => MyApp(),
        '/ML_Model': (context) => ML_Model(),
        '/MyBot': (context) => MyBot(),
        //'/dashboard': (context) => DashboardScreen(),
      },
    ),
  );
}
