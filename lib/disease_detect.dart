import 'package:flutter/material.dart';
import 'package:skin_ML/disease_predict_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ML app',
      home: ML_Model(),
    );
  }
}
