import 'package:flutter/material.dart';

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
      child: Image.asset('assets/images/BuyNowPayLater.png'),
    );
  }
}