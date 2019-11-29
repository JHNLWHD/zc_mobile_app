import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatelessWidget {

  CarouselImages({this.image1, this.image2, this.image3,});

  final String image1;
  final String image2;
  final String image3;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Carousel(
              images: [
                AssetImage(image1),
                AssetImage(image2),
                AssetImage(image3),
              ],
              dotSize: 5.0,
              dotSpacing: 15.0,
              indicatorBgPadding: 10.0,
              autoplay: false,
              dotBgColor: Colors.purple.withOpacity(0.0),
            )
        ),
      ],
    );
  }
}