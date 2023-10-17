import 'package:blustore/homepage/homescreen.dart';
import 'package:blustore/homepage/myBottomNavigationBar.dart';
import 'package:blustore/match/match.dart';
import 'package:blustore/membership/membership.dart';
import 'package:blustore/store/storepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      // routes: {
      //   'homescreen': (context) => home_screen(),
      //   'store': (context) => storePage(),
      //   'match': (context) => match(),
      //   'membership': (context) => membership(),
      // },
      home: myBottomNavigationBar(),
    );
  }
}
