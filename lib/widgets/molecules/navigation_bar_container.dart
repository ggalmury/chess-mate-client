import 'package:chess_mate_client/properties/app_color.dart';
import 'package:chess_mate_client/properties/app_style.dart';
import 'package:flutter/material.dart';

class NavigationBarContainer extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final void Function(int) onPressed;

  const NavigationBarContainer({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        items: items,
        backgroundColor: AppColor.appColor,
        selectedItemColor: AppColor.white,
        unselectedItemColor: AppColor.white,
        selectedFontSize: AppStyle.font16,
        currentIndex: currentIndex,
        onTap: onPressed,
      ),
    );
  }
}
