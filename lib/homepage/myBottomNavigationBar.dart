import 'package:blustore/homepage/homescreen.dart';
import 'package:blustore/homepage/myAppar.dart';
import 'package:blustore/match/match.dart';
import 'package:blustore/membership/membership.dart';
import 'package:blustore/store/storepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myBottomNavigationBar extends StatefulWidget {
  myBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<myBottomNavigationBar> createState() => _myBottomNavigationBarState();
}

class _myBottomNavigationBarState extends State<myBottomNavigationBar> {
  static final List<Widget> Pages = <Widget>[
    home_screen(),
    storePage(),
    match(),
    membership(),
  ];
  int _currentindext = 0;
  void selectPage(int indext) {
    setState(() {
      _currentindext = indext;
    });
    print(indext);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[_currentindext],
      bottomNavigationBar: btv(),
    );
  }

  Widget btv() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BottomNavigationBar(
        currentIndex: _currentindext,
        onTap: selectPage,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        backgroundColor: Color.fromARGB(255, 242, 239, 239),
        selectedItemColor: Color.fromRGBO(0, 72, 255, 1),
        unselectedItemColor: Color.fromRGBO(0, 72, 255, 1),
        selectedFontSize: 16,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "الرئيسية",
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.storefront_rounded),
            icon: Icon(Icons.storefront_outlined),
            label: 'المتاجر',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.sportscourt_fill),
            icon: Icon(CupertinoIcons.sportscourt),
            label: 'المباريات',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.star),
            icon: Icon(Icons.star_border),
            label: 'العضويات',
          ),
        ],
      ),
    );
  }
}
