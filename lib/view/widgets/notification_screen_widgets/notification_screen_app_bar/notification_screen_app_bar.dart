import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:millers/view/widgets/common_widgets/colors.dart';
import 'package:millers/view/widgets/common_widgets/text.dart';

class NotificationScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NotificationScreenAppBar({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SvgPicture.asset('assets/images/backbutton.svg'),
      centerTitle: true,
      title: TextWidget(text: 'Notifications', color: searchContainerSearchIconColor, fontStyle: 'mulishBold', size: screenSize.width/30, weight: FontWeight.bold),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}