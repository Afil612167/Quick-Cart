
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DiscountSlider extends StatelessWidget {
  const DiscountSlider({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 3.0,
        enlargeCenterPage: true,
      ),
      items: [
        Container(
          width: width*0.9,
          color: Colors.blue,
          margin: EdgeInsets.only(left: 10),
        ),
        Container(
          width: width / 0.9,
          color: Colors.blue,
          margin: EdgeInsets.only(left: 10),
        ),
        Container(
          width: width *0.9,
          color: Colors.blue,
          margin: EdgeInsets.only(left: 10),
        ),
        Container(
          width: width *0.9,
          color: Colors.blue,
          margin: EdgeInsets.only(left: 10),
        ),
      ],
    );
  }
}
