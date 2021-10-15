import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselProducto extends StatelessWidget {
  final List<String> imgList;
  CarouselProducto({Key key, @required this.imgList});
  @override
  Widget build(BuildContext context) {

    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }

    // TODO: implement build
    return CarouselSlider(
      viewportFraction: 0.9,
      aspectRatio: 1.5,
      autoPlay: false,
      enlargeCenterPage: true,
      pauseAutoPlayOnTouch: Duration(seconds: 3),
      items: imgList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                url,
                fit: BoxFit.fill,
                width: 1000.0,
              ),
            ),
          );
        },
      ).toList(),
    );
    ;
  }
}
