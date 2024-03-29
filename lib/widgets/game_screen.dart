import 'package:chess_mate_client/game/components/game/pvp_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: GameWidget(
          game: PvpGame(),
        ),
      ),
    );
  }
}
