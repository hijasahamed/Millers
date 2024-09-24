import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:millers/view/widgets/common_widgets/text.dart';

class HomeScreenTitleAndNotification extends StatelessWidget {
  const HomeScreenTitleAndNotification({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenSize.width/15,bottom: screenSize.width/15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(text: 'Millers', color: Colors.black, fontStyle: 'mulishBold', size: screenSize.width/15, weight: FontWeight.bold),
          SvgPicture.asset('assets/images/notification icon.svg')
        ],
      ),
    );
  }
}