import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AppSvg extends StatelessWidget {
  final String assetName;
  final String? directory;
  final double? size;
  final Color? color;

  const AppSvg({
    super.key,
    required this.assetName,
    this.directory,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final String path = directory != null ? "assets/svgs/$directory/$assetName.svg" : "assets/svgs/$assetName.svg";

    return SvgPicture.asset(
      path,
      width: size,
      height: size,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }
}
