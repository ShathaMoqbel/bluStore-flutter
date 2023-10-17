import 'package:blustore/homepage/myAppar.dart';
import 'package:blustore/homepage/myBottomNavigationBar.dart';
import 'package:blustore/membership/gif.dart';

import 'package:flutter/material.dart';

final firstColor = Color.fromARGB(255, 27, 23, 69);
final secondColor = Color.fromARGB(255, 20, 65, 102);
final thiredColor = Color.fromARGB(255, 2, 15, 27);

class membership extends StatelessWidget {
  const membership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 240,
            child: Stack(
              children: [
                Container(
                  child: adsImage("images/alhilal.gif"),
                ),
                Positioned(
                  top: 70,
                  bottom: 0,
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          child: Text(
                            'العضويات',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(
                          height: 90,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                fourColor,
                                secondColor,
                                firstColor,
                                thiredColor
                              ], tileMode: TileMode.decal),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 55,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        towColor,
                                        oneColor,
                                        threeColor,
                                      ], tileMode: TileMode.decal),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      " العضويات",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Text(
                                  "بلو لايت",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [fourColor, secondColor, firstColor, thiredColor],
                      tileMode: TileMode.decal),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(children: [
                SizedBox(
                  height: 5,
                ),
                Positioned(
                  top: 4,
                  left: 4,
                  bottom: 120,
                  child: Container(
                    child: Image.asset(
                      "images/bluStore.png",
                      color: Color.fromARGB(255, 220, 219, 219),
                      fit: BoxFit.contain,
                      height: 90,
                      width: 90,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 75,
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "images/sim.jpg",
                          width: 40,
                          height: 50,
                        ),
                      ),
                    ],
                  )),
                ),
                Positioned(
                  left: 20,
                  bottom: 8,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "اسم العضو",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "شذا المقبل",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(children: [
                        Text(
                          "تاريخ الانتهاء",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "20-08-2032",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ],
                  ),
                )
              ]),
            ),
          )
        ],
      ),

      //bottomNavigationBar: myBottomNavigationBar(),
    );
  }
}
