import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget adsImages(String imageUrl) {
  return Builder(builder: (BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            )));
  });
}

class adsImage extends StatelessWidget {
  const adsImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CarouselSlider(
        options: CarouselOptions(
          reverse: true,
          height: 260,
          autoPlay: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
          autoPlayAnimationDuration: Duration(seconds: 3),
          viewportFraction: 0.8,
          aspectRatio: 2.5,
          clipBehavior: Clip.none,
        ),
        items: [
          adsImages("images/ordernow.jpeg"),
          adsImages("images/driverfast.jpeg"),
          adsImages("images/fans.jpeg"),
          adsImages("images/news.jpeg"),
        ],
      ),
    );
  }
}
