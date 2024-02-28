import 'package:chess_mate_client/properties/app_color.dart';
import 'package:chess_mate_client/properties/app_style.dart';
import 'package:chess_mate_client/widgets/atoms/app_img.dart';
import 'package:flutter/material.dart';

class OpeningContainer extends StatelessWidget {
  const OpeningContainer({super.key});

  Decoration _containerStyle() {
    return const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: AppColor.gray2, width: 1),
      ),
    );
  }

  TextStyle _openingNameStyle() {
    return const TextStyle(fontSize: AppStyle.font14, fontWeight: FontWeight.bold);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: _containerStyle(),
      child: Row(
        children: [
          Expanded(child: Text("Queen's gambit", style: _openingNameStyle(), overflow: TextOverflow.ellipsis)),
          Text("1. d4", style: _openingNameStyle()),
          const SizedBox(width: 10),
          const Icon(Icons.favorite_border, size: 20),
        ],
      ),
    );
  }
}
