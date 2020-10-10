// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_ML/Homepage/DiseasesInfoPage.dart';

class DiseasesList extends StatefulWidget {
  DiseasesList({Key key}) : super(key: key);

  @override
  _DiseasesListState createState() => _DiseasesListState();
}

class _DiseasesListState extends State<DiseasesList> {
  // ignore: non_constant_identifier_names
  List<String> diseaseData = [
    "name",
    "Lorem ipsum oreet suspendisse interdum consecteturmet. as erat imperdiet. Amet mattis vulputate enim nulla. Tellus cras adipiscing enim eu turpis egestas pretium aenean. In cursus turpis massa tincidunt dui ut ornare lectus sit. Viverra vitae congue eu consequat. Orci dapibus ultrices in iaculis nunc sed. Volutpat blandit aliquam etiam erat velit scelerisque in dictum non. Eu mi bibendum neque egestas congue quisque egestas. Enim diam vulputate ut pharetra sit amet aliquam id. Ac tincidunt vitae semper quis. Nulla pharetra diam sit amet."
  ];
  row_of_two_diseses_list(String _disesesName, int _index) {
    var _cardColor;
    if (_index % 3 == 0) {
      _cardColor = Color.fromRGBO(255, 58, 64, 0.85);
    } else if (_index % 3 == 1) {
      _cardColor = Color.fromRGBO(70, 50, 57, 1);
    } else {
      _cardColor = Color.fromRGBO(138, 132, 226, 1);
    }
    return Card(
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(0),
          height: 50.0,
          width: MediaQuery.of(this.context).size.width - 20,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                _disesesName,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: _cardColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0)),
        ),
        onTap: () {
          Navigator.push(
            this.context,
            // ignore: missing_return
            MaterialPageRoute(
              builder: (context) => DiseasesInfoPage(),
              settings: RouteSettings(arguments: diseaseData),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Types Of Skin Diseases'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            row_of_two_diseses_list("abc", 0),
            row_of_two_diseses_list("xyz", 1),
            row_of_two_diseses_list("opQ", 2),
            row_of_two_diseses_list("srt", 3),
            row_of_two_diseses_list("abc", 4),
            row_of_two_diseses_list("xyz", 5),
            row_of_two_diseses_list("opQ", 6),
            row_of_two_diseses_list("srt", 7),
            row_of_two_diseses_list("abc", 8),
            row_of_two_diseses_list("xyz", 9),
            row_of_two_diseses_list("opQ", 10),
            row_of_two_diseses_list("srt", 11),
            row_of_two_diseses_list("abc", 12),
            row_of_two_diseses_list("xyz", 13),
            row_of_two_diseses_list("opQ", 14),
            row_of_two_diseses_list("srt", 15),
            row_of_two_diseses_list("abc", 16),
            row_of_two_diseses_list("xyz", 17),
            row_of_two_diseses_list("opQ", 18),
            row_of_two_diseses_list("srt", 19),
            row_of_two_diseses_list("abc", 20),
            row_of_two_diseses_list("xyz", 21),
            row_of_two_diseses_list("opQ", 22),
          ],
        ),
      ),
    );
  }
}
