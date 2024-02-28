import 'package:chess_mate_client/game/components/board/chess_board_component.dart';
import 'package:chess_mate_client/game/components/game/pvp_game.dart';
import 'package:chess_mate_client/game/components/pieces/pvp/pvp_piece_component.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:chess_mate_client/properties/enum.dart';
import 'package:flame/components.dart';

class PvpChessBoardComponent extends ChessBoardComponent {
  PvpChessBoardComponent({required Vector2 position}) : super(position: position);

  void _addPieces() {
    final List<PvpPieceComponent> pieces = [];
    final List<String> rows = (gameRef as PvpGame).pvpController.fen.split(' ')[0].split('/');

    for (int y = 0; y < rows.length; y++) {
      final String row = rows[y];
      int x = 0;

      for (int i = 0; i < row.length; i++) {
        final String char = row[i];
        if (int.tryParse(char) != null) {
          x += int.parse(char);
        } else {
          late final PvpPieceComponent? piece;
          final String type = char.toUpperCase();
          final PlayerColor playerColor = char.toUpperCase() == char ? PlayerColor.white : PlayerColor.black;
          final Coordinate coordinate = Coordinate(x: x, y: 7 - y);

          piece = (gameRef as PvpGame).pvpController.createPiece(type, playerColor, coordinate);
          if (piece != null) pieces.add(piece);

          x++;
        }
      }
    }

    addAll(pieces);
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

    _addPieces();
  }
}
