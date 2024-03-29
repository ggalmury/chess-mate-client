import 'package:chess_mate_client/game/components/game/pvp_game.dart';
import 'package:chess_mate_client/game/components/pieces/piece_component.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flutter/widgets.dart';

abstract class GamePieceComponent extends PieceComponent with TapCallbacks {
  GamePieceComponent({
    required super.pieceType,
    required super.playerColor,
    required super.coordinate,
  });

  List<Vector2> moveablePosition();

  void move(Coordinate coordinate) {
    final Vector2 destination = coordinateToPosition(coordinate);
    final MoveEffect move = MoveEffect.to(destination, EffectController(duration: 0.2, curve: Curves.ease));

    add(move);
  }

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);

    final GamePieceComponent? selectedPiece = (gameRef as PvpGame).pvpController.selectedPiece;
    (gameRef as PvpGame).pvpController.selectedPiece = selectedPiece != null || selectedPiece == this ? null : this;
  }
}
