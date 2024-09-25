import 'package:flutter/material.dart';
import 'package:millers/controllers/instences.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';
import 'package:millers/view/widgets/home_screen_widgets/buy_now_pay_later/buy_now_pay_later.dart';
import 'package:millers/view/widgets/home_screen_widgets/buy_one_get_one/buy_one_get_one.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_carosal_builder/home_screen_carosal_builder.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_collections/home_screen_collections.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_incense_collection/home_screen_incense_collection.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_search_bar/home_screen_search_bar.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_title_and_notification/home_screen_title_and_notification.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_top_categories/home_screen_top_categories.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: screenSize.width / 20, right: screenSize.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeScreenTitleAndNotification(screenSize: screenSize),
              HomeScreenSearchBar(screenSize: screenSize),
              HomeScreenCarosalBuilder(images: carosalImages, screenSize: screenSize),
              HomeScreenTopCategories(screenSize: screenSize, categories: topCategories),
              BuyOneGetOne(screenSize: screenSize,),
              BuyNowPayLater(screenSize: screenSize),
              HomeScreenCollections(screenSize: screenSize),
              HomeScreenIncenseCollection(screenSize: screenSize)
            ],
          ),
        ),
      ),
    );
  }
}