import 'package:chess_mate_client/game/components/game/chess_game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

abstract class ChessBoardComponent extends PositionComponent with HasGameRef<ChessGame> {
  ChessBoardComponent({required Vector2 position}) : super(position: position);

  Paint get whiteCell => Paint()..color = gameRef.boardConfig.whiteCellColor;
  Paint get blackCell => Paint()..color = gameRef.boardConfig.blackCellColor;

  void _drawCells(Canvas canvas) {
    final double cellSize = gameRef.boardConfig.cellSize;
    final int cellCount = gameRef.boardConfig.cellCount;

    for (int i = 0; i < cellCount; i++) {
      for (int j = 0; j < cellCount; j++) {
        final Paint paint = (i + j) % 2 == 0 ? whiteCell : blackCell;
        canvas.drawRect(Rect.fromLTWH(j * cellSize, i * cellSize, cellSize, cellSize), paint);
      }
    }
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

    final double boardSize = gameRef.boardConfig.boardSize;

    size = Vector2(boardSize, boardSize);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    _drawCells(canvas);
  }
}
