import 'package:blustore/homepage/adsImage.dart';
import 'package:blustore/homepage/boxProdect.dart';
import 'package:blustore/homepage/drawer.dart';
import 'package:blustore/homepage/listProdects.dart';
import 'package:blustore/homepage/myAppar.dart';
import 'package:blustore/homepage/myBottomNavigationBar.dart';
import 'package:blustore/homepage/newlist.dart';
import 'package:blustore/homepage/newsBox.dart';
import 'package:blustore/homepage/techetImage.dart';
import 'package:blustore/homepage/tecket.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 239, 239),
      appBar: myAppar(),
      endDrawer: myenddrawer(),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          adsImage(),
          SizedBox(
            height: 10,
          ),
          listProdect(),
          SizedBox(
            height: 10,
          ),
          BoxProdect(),
          SizedBox(
            height: 10,
          ),
          Tecket(),
          SizedBox(
            height: 10,
          ),
          tecketImage(),
          SizedBox(
            height: 10,
          ),
          newslist(),
          SizedBox(
            height: 10,
          ),
          NewsBox(),
          SizedBox(
            height: 18,
          ),
        ],
      ),
      // bottomNavigationBar: myBottomNavigationBar(),
    );
  }
}
