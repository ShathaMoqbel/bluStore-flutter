import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar myAppar() {
  return AppBar(
    scrolledUnderElevation: 8,
    elevation: 0,
    //   backgroundColor: Color.fromARGB(255, 249, 247, 243),
    backgroundColor: Color.fromARGB(255, 242, 239, 239),
    leading: IconButton(
      onPressed: () {},
      icon: Icon(CupertinoIcons.placemark_fill),
      color: Color.fromRGBO(0, 72, 255, 1),
      iconSize: 30,
    ),
    title: Center(
      child: Image(
        image: AssetImage("images/bluStore.png"),
        width: 100,
        height: 110,
      ),
    ),

    actions: [
      Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: Icon(Icons.sort),
          color: Color.fromRGBO(0, 72, 255, 1),
          iconSize: 30,
        );
      }),
    ],
  );
}
