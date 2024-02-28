import 'package:chess_mate_client/game/components/game/pvp_game.dart';
import 'package:chess_mate_client/game/components/pieces/piece_component.dart';
import 'package:chess_mate_client/game/helper/game_helper.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flutter/widgets.dart';

abstract class PvpPieceComponent extends PieceComponent with TapCallbacks {
  PvpPieceComponent({
    required super.pieceType,
    required super.playerColor,
    required super.coordinate,
  });

  List<Vector2> moveablePosition();

  void move(Coordinate coordinate) {
    final double pieceSize = gameRef.boardConfig.pieceSize;
    final Vector2 destination = GameHelper.coordinateToPosition(coordinate, pieceSize);
    final MoveEffect move = MoveEffect.to(destination, EffectController(duration: 0.2, curve: Curves.ease));

    this.coordinate = coordinate;
    add(move);
  }

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);

    final PvpPieceComponent? selectedPiece = (gameRef as PvpGame).pvpController.selectedPiece;
    (gameRef as PvpGame).pvpController.selectedPiece = selectedPiece != null || selectedPiece == this ? null : this;
  }
}
