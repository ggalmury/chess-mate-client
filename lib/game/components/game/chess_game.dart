import 'dart:async';

import 'package:chess_mate_client/game/board_config.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

abstract class ChessGame extends FlameGame {
  final String fen;

  ChessGame({required this.fen});

  late final BoardConfig boardConfig;

  @override
  Color backgroundColor() => Colors.transparent;

  void addChessBoard();

  @override
  FutureOr<void> onLoad() {
    super.onLoad();

    boardConfig = BoardConfig(boardSize: size.x * 0.85);

    addChessBoard();
  }
}
