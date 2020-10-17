import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final List task = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: appLogo,
        title: Text(
          task[0],
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.network(task[1], fit: BoxFit.scaleDown),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  task[2],
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
