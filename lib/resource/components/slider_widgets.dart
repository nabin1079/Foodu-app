import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/model/sliddermodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sliderwidget extends StatelessWidget {



  final List<Slidermodel> data;
  const Sliderwidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
  options: CarouselOptions(
      height: 200,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
     
      scrollDirection: Axis.horizontal,
   ),
  items: data. map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
          child: Image(image: NetworkImage("${i.image}",),errorBuilder: (context, error, stackTrace) {
            return const Image(image: NetworkImage("https://cdn0.iconfinder.com/data/icons/shift-interfaces/32/Error-512.png"));
          },)
        );
      },
    );
  }).toList(),
) ;
  }
}