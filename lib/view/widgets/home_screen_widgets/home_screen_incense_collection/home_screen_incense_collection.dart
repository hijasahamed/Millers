import 'package:flutter/material.dart';
import 'package:millers/controllers/instences.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';
import 'package:millers/view/widgets/common_widgets/text.dart';

class HomeScreenIncenseCollection extends StatelessWidget {
  const HomeScreenIncenseCollection({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenSize.width/20),
      child: Column(
        children: [
          Row(
            children: [
              TextWidget(
                  text: 'Incense Collections',
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
          SizedBox(height: screenSize.width/20,),
          Column(
            children: List.generate(5, (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: screenSize.width/40),
                child: Card(
                  color: colorWhite,
                  elevation: 4,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.width/120,left: screenSize.width/120,right: screenSize.width/120,bottom: screenSize.width/40),
                        child: Column(
                          children: [
                            Image.asset(incenseCollectionList[index]),
                            TextWidget(
                              text: 'Palo Santo Sticks',
                              color: searchContainerSearchIconColor,
                              fontStyle: 'mulishBold',
                              size: screenSize.width / 27,
                              weight: FontWeight.bold),
                             SizedBox(height: screenSize.height/200,), 
                            TextWidget(
                              text: '(Holy Wood)',
                              color: searchContainerSearchIconColor,
                              fontStyle: 'mulish',
                              size: screenSize.width / 27,
                              weight: FontWeight.bold),
                            TextWidget(
                              text: '₹932.00-₹4,635.00',
                              color: searchContainerSearchIconColor,
                              fontStyle: 'mulish',
                              size: screenSize.width / 27,
                              weight: FontWeight.bold),
                            SizedBox(height: screenSize.height/100,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(screenSize.width/75),
                                color: searchContainerBorderColor
                              ),
                              height: screenSize.height/30,
                              width: screenSize.width/3.5,
                              child: Center(
                                child: TextWidget(
                                  text: 'View Product',
                                  color: colorWhite,
                                  fontStyle: 'mulish',
                                  size: screenSize.width / 31,
                                  weight: FontWeight.bold),
                              ),
                            )  
                          ],
                        ),
                      ),
                      Positioned(
                        top: screenSize.width/40,
                        right: screenSize.width/40,
                        child: const CircleAvatar(
                          backgroundColor: colorblack,
                          child: Icon(Icons.favorite_outline_rounded,color: colorWhite,),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}