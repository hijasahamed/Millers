import 'package:flutter/material.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';
import 'package:millers/view/widgets/common_widgets/text.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenSize.width/19),
      child: Container(
        height: screenSize.height/17,
        width: screenSize.width,
        decoration: BoxDecoration(
          border: Border.all(color: searchContainerBorderColor,width: screenSize.width/500),
          borderRadius: BorderRadius.circular(screenSize.width/15)
        ),
        child: Row(
          children: [
            SizedBox(width: screenSize.width/40,),
            Image.asset('assets/images/search icon.png'),
            SizedBox(width: screenSize.width/40,),
            TextWidget(text: 'search', color: searchContainerSearchIconColor, fontStyle: 'mulish', size: screenSize.width/25, weight: FontWeight.w400)
          ],
        ),
      ),
    );
  }
}