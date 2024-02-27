import 'package:chess_mate_client/game/components/pieces/pvp/pvp_piece_component.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:chess_mate_client/properties/enum.dart';
import 'package:flame/components.dart';

class PvpQueenComponent extends PvpPieceComponent {
  PvpQueenComponent({
    required PlayerColor playerColor,
    required Coordinate coordinate,
  }) : super(
          pieceType: PieceType.queen,
          playerColor: playerColor,
          coordinate: coordinate,
        );

  @override
  List<Vector2> moveablePosition() {
    return [];
  }
}
