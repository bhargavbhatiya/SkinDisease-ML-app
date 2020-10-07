import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_ML/chatbot.dart';
import 'package:skin_ML/disease_predict_model.dart';

class MyNavBar extends StatefulWidget {
  MyNavBar({Key key}) : super(key: key);

  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => ML_Model(),
        ),
      );
    }
    if (_selectedIndex == 2) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => MyBot(),
        ),
      );
    }
    _selectedIndex = 0;
  }

  // var color2 = Color.fromRGBO(255, 192, 194, 1);
  // var color1 = Color.fromRGBO(150, 1, 178, 1);
  // var color4 = Color.fromRGBO(255, 177, 187, 1);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(250, 255, 250, 1),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Detect',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color.fromRGBO(14, 49, 80, 1),
      onTap: _onItemTapped,
    );
  }
}
