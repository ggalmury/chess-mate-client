import 'package:chess_mate_client/properties/app_color.dart';
import 'package:chess_mate_client/widgets/molecules/opening_container.dart';
import 'package:flutter/material.dart';

class OpeningWrapper extends StatelessWidget {
  const OpeningWrapper({super.key});

  Decoration _containerStyle() {
    return BoxDecoration(
      color: AppColor.white,
      borderRadius: BorderRadius.circular(20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: _containerStyle(),
      child: GridView.builder(
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemBuilder: (context, index) => const Center(child: OpeningContainer()),
      ),
    );
  }
}
