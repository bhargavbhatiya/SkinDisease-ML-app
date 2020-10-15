import 'package:flutter/material.dart';

class DailyProblemsPage extends StatefulWidget {
  @override
  _DailyProblemsPageState createState() => _DailyProblemsPageState();
}

class _DailyProblemsPageState extends State<DailyProblemsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final List DailyProblem = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: appLogo,
        title: Text(
          DailyProblem[0],
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.network(DailyProblem[1][0], fit: BoxFit.scaleDown),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  DailyProblem[1][1],
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
