import 'package:flutter/material.dart';

class OpeningContainer extends StatelessWidget {
  const OpeningContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      color: Colors.red,
      child: const Center(
        child: Text("data"),
      ),
    );
  }
}
