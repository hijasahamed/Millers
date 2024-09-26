import 'package:flutter/material.dart';
import 'package:millers/view/widgets/notification_screen_widgets/notification_screen_app_bar/notification_screen_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NotificationScreenAppBar(screenSize: screenSize,),
      body: Center(child: Text('data'),),
    );
  }
}