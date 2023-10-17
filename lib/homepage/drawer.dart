import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myenddrawer() {
  return Container(
    width: double.infinity,
    child: Drawer(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 60, horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 7, 66, 114),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "شذا المقبل",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w100),
                        ),
                        Text(
                          "الملف الشخصي",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(
                "الاخبار",
                style: TextStyle(
                    color: Color.fromRGBO(0, 72, 255, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.newspaper,
                color: Color.fromRGBO(0, 72, 255, 1),
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "تذاكري",
                style: TextStyle(
                    color: Color.fromRGBO(0, 72, 255, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                CupertinoIcons.ticket,
                color: Color.fromRGBO(0, 72, 255, 1),
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "المفضلة",
                style: TextStyle(
                    color: Color.fromRGBO(0, 72, 255, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.favorite_border,
                color: Color.fromRGBO(0, 72, 255, 1),
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "الطلبات",
                style: TextStyle(
                    color: Color.fromRGBO(0, 72, 255, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                CupertinoIcons.doc_plaintext,
                color: Color.fromRGBO(0, 72, 255, 1),
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "عن بلو",
                style: TextStyle(
                    color: Color.fromRGBO(0, 72, 255, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                CupertinoIcons.info_circle,
                color: Color.fromRGBO(0, 72, 255, 1),
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "تغيير اللغة",
                style: TextStyle(
                    color: Color.fromRGBO(0, 72, 255, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.language,
                // CupertinoIcons.textformat,
                color: Color.fromRGBO(0, 72, 255, 1),
                size: 25,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    ),
  );
}
