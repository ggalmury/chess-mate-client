import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:flame/game.dart';

class GameHelper {
  static Vector2 coordinateToPosition(Coordinate coordinate, double pieceSize) {
    return Vector2(coordinate.x * pieceSize, (7 - coordinate.y) * pieceSize);
  }

  static Coordinate positionToCoordinate(Vector2 position, double pieceSize) {
    return Coordinate(x: (position.x / pieceSize).floor(), y: (position.y / pieceSize + 7).floor());
  }
}
