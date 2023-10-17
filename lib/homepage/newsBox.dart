import 'package:flutter/material.dart';

Widget BoxNews(String urlimagenews, String titlenews, String secondtitle,
    String time, String date) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Container(
            height: 120,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(urlimagenews), fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 15, right: 4, left: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  titlenews,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 7, 66, 114),
                  ),
                ),
                Text(
                  secondtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromARGB(255, 78, 77, 77),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(children: [
                    TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        text: time),
                    TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        text: " - "),
                    TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        text: date),
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

class NewsBox extends StatelessWidget {
  const NewsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          BoxNews('images/news.jpeg', "الهلال يتوج بطلاَ لكأس سوبر لوسيل",
              "توج فريق الهلال بكأس سوبر لوسيل", "04:30", "2022/9/10"),
          SizedBox(
            height: 16,
          ),
          BoxNews('images/news.jpeg', "الهلال يتوج بطلاَ لكأس سوبر لوسيل",
              "توج فريق الهلال بكأس سوبر لوسيل", "04:30", "2022/9/10"),
          SizedBox(
            height: 16,
          ),
          BoxNews('images/news.jpeg', "الهلال يتوج بطلاَ لكأس سوبر لوسيل",
              "توج فريق الهلال بكأس سوبر لوسيل", "04:30", "2022/9/10"),
        ],
      ),
    );
  }
}
