import 'package:chess_mate_client/game/components/pieces/pvp/pvp_piece_component.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:chess_mate_client/properties/enum.dart';
import 'package:flame/components.dart';

class PvpKnightComponent extends PvpPieceComponent {
  PvpKnightComponent({
    required PlayerColor playerColor,
    required Coordinate coordinate,
  }) : super(
          pieceType: PieceType.knight,
          playerColor: playerColor,
          coordinate: coordinate,
        );

  @override
  List<Vector2> moveablePosition() {
    return [];
  }
}
