import 'package:flutter/material.dart';

class AppImg extends StatelessWidget {
  final String url;
  final ImageProvider imageProvider;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? backgroundColor;

  const AppImg({
    super.key,
    required this.url,
    required this.imageProvider,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
  });

  AppImg.fromAsset({
    Key? key,
    required String assetPath,
    double? width,
    double? height,
    double? borderRadius,
    Color? backgroundColor,
  }) : this(
          key: key,
          url: assetPath,
          imageProvider: AssetImage(assetPath),
          width: width,
          height: height,
          borderRadius: borderRadius,
          backgroundColor: backgroundColor,
        );

  AppImg.fromNetwork({
    Key? key,
    required String imageUrl,
    double? width,
    double? height,
    double? borderRadius,
    Color? backgroundColor,
  }) : this(
          key: key,
          url: imageUrl,
          imageProvider: NetworkImage(imageUrl),
          width: width,
          height: height,
          borderRadius: borderRadius,
          backgroundColor: backgroundColor,
        );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: Container(
        color: backgroundColor,
        child: Image(
          image: imageProvider,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
