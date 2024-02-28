import 'package:chess_mate_client/properties/app_color.dart';
import 'package:chess_mate_client/properties/app_style.dart';
import 'package:chess_mate_client/widgets/atoms/app_img.dart';
import 'package:flutter/material.dart';

class LogoAppBar extends AppBar {
  LogoAppBar({super.key})
      : super(
          actions: [
            const SizedBox(width: 20),
            AppImg.fromAsset(
              assetPath: "assets/images/logo.png",
              width: 30,
              height: 30,
              borderRadius: 99,
            ),
            const SizedBox(width: 7),
            const Text("chessmate",
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: AppStyle.font20,
                  fontWeight: FontWeight.bold,
                )),
            const Spacer(),
            const SizedBox(width: 20),
          ],
        );
}
