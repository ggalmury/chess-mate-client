import 'dart:async';

import 'package:chess_mate_client/game/components/game/chess_game.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:chess_mate_client/properties/enum.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

abstract class PieceComponent extends SpriteComponent with HasGameRef<ChessGame> {
  final PieceType pieceType;
  final PlayerColor playerColor;
  final Coordinate coordinate;

  PieceComponent({
    required this.pieceType,
    required this.playerColor,
    required this.coordinate,
  }) : super(key: ComponentKey.unique());

  Vector2 coordinateToPosition(Coordinate coordinate) {
    final double pieceSize = gameRef.boardConfig.pieceSize;

    return Vector2(coordinate.x * pieceSize, (7 - coordinate.y) * pieceSize);
  }

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    final piece = await Flame.images.load("piece/${pieceType.name}_${playerColor.name}.png");
    final double pieceSize = gameRef.boardConfig.pieceSize;

    sprite = Sprite(piece);
    size = Vector2(pieceSize, pieceSize);
    position = coordinateToPosition(coordinate);
  }
}
