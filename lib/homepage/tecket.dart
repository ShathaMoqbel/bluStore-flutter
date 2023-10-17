import 'package:flutter/material.dart';

class Tecket extends StatelessWidget {
  const Tecket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Text(
        "تذاكر",
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Color.fromARGB(255, 7, 66, 114),
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
