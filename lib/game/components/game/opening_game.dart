import 'dart:async';

import 'package:chess_mate_client/game/components/board/opening_chess_board_component.dart';
import 'package:chess_mate_client/game/components/game/chess_game.dart';
import 'package:chess_mate_client/game/controllers/pvp_controller.dart';
import 'package:chess_mate_client/properties/constant.dart';
import 'package:flame/components.dart';

class OpeningGame extends ChessGame {
  OpeningGame() : super(fen: defaultFen);

  late final PvpController pvpController;

  @override
  void addChessBoard() {
    late final OpeningChessBoardComponent board;
    final double x = (size.x - boardConfig.boardSize) / 2;
    const double y = 50;

    board = OpeningChessBoardComponent(position: Vector2(x, y));

    add(board);
  }

  @override
  FutureOr<void> onLoad() {
    pvpController = PvpController(fen: fen);

    super.onLoad();
  }
}
