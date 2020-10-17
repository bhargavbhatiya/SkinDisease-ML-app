import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_ML/Homepage/reminder.dart';

class SetTimePage extends StatefulWidget {
  @override
  _SetTimePageState createState() => _SetTimePageState();
}

class _SetTimePageState extends State<SetTimePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
        centerTitle: true,
        // title: appLogo,
        title: Text(
          "Set Time",
          style: TextStyle(fontSize: 27, color: Colors.white),
          textAlign: TextAlign.left,
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Set Wake Up Time",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.barlow(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MyStatefulWidget(),
              Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Set Sleep Time",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.barlow(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              MyStatefulWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      this.context,
                      // ignore: missing_return
                      MaterialPageRoute(
                        builder: (context) => MyReminder(),
                      ),
                    );
                  },
                  child: const Text(
                    'Set',
                    style: TextStyle(
                        color: Colors.black, backgroundColor: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = '  00:00 ';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 30,
        elevation: 16,
        style: TextStyle(color: Colors.black),
        underline: Container(
          color: Colors.white,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          '  00:00 ',
          '  01:00 ',
          '  02:00 ',
          '  03:00 ',
          '  04:00 ',
          '  05:00 ',
          '  06:00 ',
          '  07:00 ',
          '  08:00 ',
          '  09:00 ',
          '  10:00 ',
          '  11:00 ',
          '  12:00 ',
          '  13:00 ',
          '  14:00 ',
          '  15:00 ',
          '  16:00 ',
          '  17:00 ',
          '  18:00 ',
          '  19:00 ',
          '  20:00 ',
          '  21:00 ',
          '  22:00 ',
          '  23:00 '
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          );
        }).toList(),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
