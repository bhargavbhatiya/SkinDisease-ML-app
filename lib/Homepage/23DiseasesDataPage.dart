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
  // ignore: non_constant_identifier_names
  row_of_two_diseses_list(String _disesesName, int _index) {
    var _cardColor;
    if (_index % 3 == 0) {
      _cardColor = Color.fromRGBO(229, 184, 191, 1);
    } else if (_index % 3 == 1) {
      _cardColor = Color.fromRGBO(229, 233, 199, 1);
    } else {
      _cardColor = Color.fromRGBO(217, 221, 248, 1);
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
                style: TextStyle(fontSize: 20, color: Colors.black87),
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
            row_of_two_diseses_list("Acne and Rosacea", 0),
            row_of_two_diseses_list(
                "Actinic Keratosis Basal Cell Carcinoma and other Malignant Lesions",
                1),
            row_of_two_diseses_list("Atopic Dermatitis", 2),
            row_of_two_diseses_list("Bullous Disease", 3),
            row_of_two_diseses_list(
                "Cellulitis Impetigo and other Bacterial Infections", 4),
            row_of_two_diseses_list("Eczema", 5),
            row_of_two_diseses_list("Exanthems and Drug Eruptions", 6),
            row_of_two_diseses_list(
                "Hair Loss Photos Alopecia and other Hair Diseases", 7),
            row_of_two_diseses_list("Herpes HPV and other STDs", 8),
            row_of_two_diseses_list(
                "Light Diseases and Disorders of Pigmentation", 9),
            row_of_two_diseses_list(
                "Lupus and other Connective Tissue diseases", 10),
            row_of_two_diseses_list("Melanoma Skin Cancer Nevi and Moles", 11),
            row_of_two_diseses_list("Nail Fungus and other Nail Disease", 12),
            row_of_two_diseses_list(
                "Poison Ivy Photos and other Contact Dermatitis", 13),
            row_of_two_diseses_list(
                "Psoriasis pictures Lichen Planus and related diseases", 14),
            row_of_two_diseses_list(
                "Scabies Lyme Disease and other Infestations and Bites", 15),
            row_of_two_diseses_list(
                "Seborrheic Keratoses and other Benign Tumors", 16),
            row_of_two_diseses_list("Systemic Disease", 17),
            row_of_two_diseses_list(
                "Tinea Ringworm Candidiasis and other Fungal Infections", 18),
            row_of_two_diseses_list("Urticaria Hives", 19),
            row_of_two_diseses_list("Vascular Tumors", 20),
            row_of_two_diseses_list("Vasculitis Photos", 21),
            row_of_two_diseses_list(
                "Warts Molluscum and other Viral Infections", 22),
          ],
        ),
      ),
    );
  }
}
