import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreenCarosalBuilder extends StatelessWidget {
  const HomeScreenCarosalBuilder({
    super.key,
    required this.images,
    required this.screenSize,
  });

  final List<String> images;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      itemBuilder: (context, index, realIndex) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            images[index],
            fit: BoxFit.fill,
          ),
        );
      },
      options: CarouselOptions(
        height: screenSize.height/5.5,
        autoPlay: true,
        enlargeCenterPage: false,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 1,
        enableInfiniteScroll: false,
      ),
    );
  }
}