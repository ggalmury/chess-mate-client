import 'dart:ui';

import 'package:chess_mate_client/properties/app_color.dart';

class BoardConfig {
  final double boardSize;
  final Color whiteCellColor;
  final Color blackCellColor;

  BoardConfig({
    required this.boardSize,
    this.whiteCellColor = AppColor.whiteCellColor,
    this.blackCellColor = AppColor.blackCellColor,
  });

  int get cellCount => 8;
  double get cellSize => boardSize / cellCount;
  double get pieceSize => boardSize / cellCount;
}
