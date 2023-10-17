import 'package:flutter/material.dart';

final firstColor = Color.fromARGB(255, 27, 23, 69);
final secondColor = Color.fromARGB(255, 20, 65, 102);
final thiredColor = Color.fromARGB(255, 2, 15, 27);
final fourColor = Color.fromARGB(255, 73, 187, 228);
final oneColor = Color.fromARGB(255, 232, 212, 31);
final towColor = Color.fromARGB(255, 182, 148, 27);
final threeColor = Color.fromARGB(255, 240, 189, 4);

Widget adsImage(String imageUrl) {
  return ShaderMask(
    blendMode: BlendMode.color,
    shaderCallback: (rect) {
      return LinearGradient(
        colors: [secondColor, firstColor, thiredColor],
      ).createShader(rect);
    },
    child: Image.asset(
      imageUrl,
      height: 180,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}
