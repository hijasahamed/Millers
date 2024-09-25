import 'package:flutter/material.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';
import 'package:millers/view/widgets/common_widgets/text.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String image;
  final Size screenSize;
  const CategoryItem({super.key, required this.name, required this.image,required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: screenSize.width/200),
        borderRadius: BorderRadius.circular(screenSize.width/50),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenSize.width/50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            TextWidget(text: name, color: searchContainerSearchIconColor, fontStyle: 'mulishBold', size: screenSize.width/33, weight: FontWeight.bold,maxline: true,)
          ],
        ),
      ),
    );
  }
}