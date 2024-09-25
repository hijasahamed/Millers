import 'package:flutter/material.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';
import 'package:millers/view/widgets/common_widgets/text.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_top_categories/catergory_item/catergory_item.dart';

class HomeScreenTopCategories extends StatelessWidget {
  const HomeScreenTopCategories({
    super.key,
    required this.screenSize,
    required this.categories,
  });

  final Size screenSize;
  final List<Map<String, String>> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenSize.width / 18, bottom: screenSize.width / 20),
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,            
        children: [
          TextWidget(text: 'Top Categories', color: colorblack, fontStyle: 'mulishBold', size: screenSize.width/25, weight: FontWeight.bold),
          SizedBox(height: screenSize.height/50,),
          SizedBox(
            height: screenSize.height/3.5,
            width: screenSize.width,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: screenSize.width/40,
                mainAxisSpacing: screenSize.width/30,
                childAspectRatio: 1,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryItem(
                  name: category['name']!,
                  image: category['image']!,
                  screenSize: screenSize,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}