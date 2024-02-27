import 'dart:async';

import 'package:chess_mate_client/game/components/board/pvp_chess_board_component.dart';
import 'package:chess_mate_client/game/components/game/chess_game.dart';
import 'package:chess_mate_client/game/pvp_controller.dart';
import 'package:chess_mate_client/properties/constant.dart';
import 'package:flame/components.dart';

class PvpGame extends ChessGame {
  PvpGame() : super(fen: defaultFen);

  late final PvpController pvpController;

  @override
  void addChessBoard() {
    late final PvpChessBoardComponent board;
    final double x = (size.x - boardConfig.boardSize) / 2;
    const double y = 50;

    board = PvpChessBoardComponent(position: Vector2(x, y));

    add(board);
  }

  @override
  FutureOr<void> onLoad() {
    pvpController = PvpController(fen: fen);

    super.onLoad();
  }
}
