import 'package:blustore/homepage/myAppar.dart';
import 'package:blustore/homepage/myBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class match extends StatelessWidget {
  const match({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        child: Text(
          'match',
          style: TextStyle(color: Colors.red),
        ),
      ),
      //  bottomNavigationBar: myBottomNavigationBar(),
    );
  }
}
