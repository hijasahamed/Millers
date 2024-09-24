import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:millers/view/screens/home_screen/home_screen.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: safeAreaColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));

    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Miller',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(screensize: screenSize,)
    );
  }
}