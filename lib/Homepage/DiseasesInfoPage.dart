import 'package:flutter/material.dart';

class DiseasesInfoPage extends StatefulWidget {
  @override
  _DiseasesInfoPageState createState() => _DiseasesInfoPageState();
}

class _DiseasesInfoPageState extends State<DiseasesInfoPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final List<String> DiseasesName = ModalRoute.of(context).settings.arguments;

    return Container(
      child: AlertDialog(
        contentPadding: EdgeInsets.all(8),
        insetPadding: EdgeInsets.all(8),
        title: Center(
          child: Text(
            DiseasesName[0],
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        content: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    DiseasesName[1],
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: Text(
                      'Go Back',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
