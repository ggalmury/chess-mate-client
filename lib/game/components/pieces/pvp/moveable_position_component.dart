import 'dart:ui';

import 'package:chess_mate_client/game/components/game/pvp_game.dart';
import 'package:chess_mate_client/game/helper/game_helper.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:flame/components.dart';

class MoveablePositionComponent extends CircleComponent with HasGameRef<PvpGame> {
  final Coordinate coordinate;

  MoveablePositionComponent({
    required Color color,
    required this.coordinate,
  }) : super(paint: Paint()..color = color);

  @override
  Future<void> onLoad() async {
    super.onLoad();

    radius = gameRef.boardConfig.cellSize / 2;
    position = GameHelper.coordinateToPosition(coordinate, gameRef.boardConfig.pieceSize);
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (gameRef.pvpController.selectedPiece == null) removeFromParent();
  }
}
