import 'package:flutter/material.dart';

class listProdect extends StatelessWidget {
  const listProdect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              "المزيد",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Color.fromRGBO(0, 72, 255, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "منتجات من المتجر الهلال الرسمي",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Color.fromARGB(255, 7, 66, 114),
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
