import 'package:chess_mate_client/properties/app_color.dart';
import 'package:chess_mate_client/widgets/atoms/app_svg.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends BottomNavigationBarItem {
  NavigationBarItem({required String label, required String assetName})
      : super(label: label, icon: AppSvg(assetName: assetName, size: 20, color: AppColor.white));
}
