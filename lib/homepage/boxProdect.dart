import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget boxProdect(String urlimage, String nameprodect, String price) {
  return Container(
    height: 300,
    width: 170,
    decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromARGB(255, 231, 229, 229),
        width: 1.75,
      ),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          blurRadius: 9,
          color: Colors.white,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Image(
          image: AssetImage(urlimage),
          fit: BoxFit.cover,
          height: 220,
        ),
        Text(
          nameprodect,
          style: TextStyle(
            color: Color.fromARGB(255, 7, 66, 114),
            fontSize: 17,
            fontWeight: FontWeight.w200,
          ),
          textDirection: TextDirection.rtl,
        ),
        Text(
          price,
          style: TextStyle(
            color: Color.fromRGBO(0, 72, 255, 1),
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    ),
  );
}

class BoxProdect extends StatelessWidget {
  const BoxProdect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              boxProdect(
                  "images/shirt.jpg", "الشيرت الاساسي كبار", "ر.س 399.99"),
              boxProdect(
                  "images/shirt.jpg", "الشيرت الاساسي كبار", "ر.س 399.99")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              boxProdect(
                  "images/shirt.jpg", "الشيرت الاساسي كبار", "ر.س 399.99"),
              boxProdect(
                  "images/shirt.jpg", "الشيرت الاساسي كبار", "ر.س 399.99")
            ],
          ),
        ],
      ),
    );
  }
}
