import 'package:flutter/material.dart';
import 'package:millers/view/widgets/home_screen_widgets/home_screen_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,required this.screensize});
  final Size screensize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeScreenBodyWidget(screenSize: screensize,)
      )
    );
  }
}