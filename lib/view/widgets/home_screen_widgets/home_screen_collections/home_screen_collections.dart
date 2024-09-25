import 'package:flutter/material.dart';
import 'package:millers/controllers/instences.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';
import 'package:millers/view/widgets/common_widgets/text.dart';

class HomeScreenCollections extends StatelessWidget {
  const HomeScreenCollections({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextWidget(
                text: 'collections',
                color: searchContainerSearchIconColor,
                fontStyle: 'mulishBold',
                size: screenSize.width / 27,
                weight: FontWeight.bold),
            SizedBox(
              width: screenSize.width / 120,
            ),
            Expanded(
              child: Container(
                height: screenSize.width / 250,
                color: Colors.grey,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(4, (index) {
            return Card(
              elevation: 4,
              color: colorWhite,
              child: Padding(
                  padding: EdgeInsets.all(screenSize.width / 25),
                  child: Stack(
                    children: [
                      Image.asset(
                        collectionList[index],
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                screenSize.width / 48),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenSize.width / 8.5,
                        right: screenSize.width / 25,
                        child: Row(
                          children: [
                            TextWidget(
                                text: collectionListNames[index],
                                color: colorWhite,
                                fontStyle: 'mulishBold',
                                size: screenSize.width / 27,
                                weight: FontWeight.bold),
                            TextWidget(
                                text: 'collections',
                                color: colorWhite,
                                fontStyle: 'mulish',
                                size: screenSize.width / 27,
                                weight: FontWeight.w500),
                          ],
                        ),
                      )
                    ],
                  )),
            );
          }),
        ),
      ],
    );
  }
}