import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget adsImages(String imageUrl) {
  return Container(
      width: double.infinity,
      height: 260,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          )));
}

class tecketImage extends StatelessWidget {
  const tecketImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: InkWell(
        onTap: () {},
        child: Stack(children: [
          adsImages("images/alhilal.gif"),
          Positioned(
            right: 19,
            bottom: 5,
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  CupertinoIcons.chevron_right_2,
                  color: Colors.white,
                  size: 20,
                ),
                Text(
                  "تذاكر ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 26),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
