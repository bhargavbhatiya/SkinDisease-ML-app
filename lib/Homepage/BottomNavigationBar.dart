import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_ML/chatbot.dart';
import 'package:skin_ML/disease_predict_model.dart';
import 'package:skin_ML/news/newspage.dart';

class MyNavBar extends StatefulWidget {
  MyNavBar({Key key}) : super(key: key);

  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
    if (_selectedIndex == 1) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => ML_Model(),
        ),
      );
    }
    if (_selectedIndex == 3) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => MyBot(),
        ),
      );
    }
    if (_selectedIndex == 2) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => NewsPage(),
        ),
      );
    }
    setState(() {
      _selectedIndex = index;
    });
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(250, 255, 250, 1),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          // ignore: deprecated_member_use
          title: Text("home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          // ignore: deprecated_member_use
          title: Text("detect"),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.news),
          // ignore: deprecated_member_use
          title: Text("news"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          // ignore: deprecated_member_use
          title: Text("chat"),
        )
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: Color.fromRGBO(14, 49, 80, 1),
    );
  }
}
