import 'package:chess_mate_client/widgets/organisms/opening_wrapper.dart';
import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: OpeningWrapper(),
      ),
    );
  }
}
