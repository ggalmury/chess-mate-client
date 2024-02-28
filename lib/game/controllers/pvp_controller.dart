import 'package:chess_mate_client/game/components/pieces/pvp/pvp_bishop_component.dart';
import 'package:chess_mate_client/game/components/pieces/pvp/pvp_king_component.dart';
import 'package:chess_mate_client/game/components/pieces/pvp/pvp_knight_component.dart';
import 'package:chess_mate_client/game/components/pieces/pvp/pvp_pawn_component.dart';
import 'package:chess_mate_client/game/components/pieces/pvp/pvp_piece_component.dart';
import 'package:chess_mate_client/game/components/pieces/pvp/pvp_queen_component.dart';
import 'package:chess_mate_client/game/components/pieces/pvp/pvp_rook_component.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:chess_mate_client/properties/enum.dart';

class PvpController {
  final String fen;

  PvpController({required this.fen});

  PvpPieceComponent? selectedPiece;
  Coordinate? nextPieceCoordinate;

  PvpPieceComponent? createPiece(String type, PlayerColor playerColor, Coordinate coordinate) {
    switch (type) {
      case "P":
        return PvpPawnComponent(playerColor: playerColor, coordinate: coordinate);
      case "N":
        return PvpKnightComponent(playerColor: playerColor, coordinate: coordinate);
      case "B":
        return PvpBishopComponent(playerColor: playerColor, coordinate: coordinate);
      case "R":
        return PvpRookComponent(playerColor: playerColor, coordinate: coordinate);
      case "Q":
        return PvpQueenComponent(playerColor: playerColor, coordinate: coordinate);
      case "K":
        return PvpKingComponent(playerColor: playerColor, coordinate: coordinate);
      default:
        return null;
    }
  }

  void _resetMove() {
    selectedPiece == null;
    nextPieceCoordinate = null;
  }

  void movePiece() {
    if (selectedPiece == null) return;
    if (nextPieceCoordinate == null) return;

    selectedPiece!.move(nextPieceCoordinate!);
    _resetMove();
  }
}
