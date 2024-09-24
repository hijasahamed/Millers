import 'package:flutter/material.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';
import 'package:millers/view/widgets/common_widgets/text.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_carosal_builder/home_screen_carosal_builder.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_search_bar/home_screen_search_bar.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_title_and_notification/home_screen_title_and_notification.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  HomeScreenBodyWidget({super.key, required this.screenSize});
  final Size screenSize;
  final List<String> images = [
    'assets/images/carosla picture.png',
    'assets/images/carosla picture.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenSize.width / 20, right: screenSize.width / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeScreenTitleAndNotification(screenSize: screenSize),
            HomeScreenSearchBar(screenSize: screenSize),
            HomeScreenCarosalBuilder(images: images, screenSize: screenSize),
            Padding(
              padding: EdgeInsets.only(top: screenSize.width / 18, bottom: screenSize.width / 15),
              child: Column(              
                children: [
                  TextWidget(text: 'Top Categories', color: colorblack, fontStyle: 'mulishBold', size: screenSize.width/25, weight: FontWeight.bold),
                  SizedBox(height: screenSize.height/25,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


