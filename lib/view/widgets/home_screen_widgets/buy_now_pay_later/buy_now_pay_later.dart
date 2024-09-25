import 'package:flutter/material.dart';
import 'package:millers/controllers/instences.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_carosal_builder/home_screen_carosal_builder.dart';

class BuyNowPayLater extends StatelessWidget {
  const BuyNowPayLater({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenSize.width/20),
      child: HomeScreenCarosalBuilder(images: buyNowPayNowCarosalImages, screenSize: screenSize)
    );
  }
}