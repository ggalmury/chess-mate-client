import 'package:chess_mate_client/game/components/pieces/game/game_piece_component.dart';
import 'package:chess_mate_client/game/models/coordinate.dart';
import 'package:flutter/widgets.dart';

class PvpController extends ChangeNotifier {
  final String fen;

  PvpController({required this.fen});

  GamePieceComponent? selectedPiece;
  Coordinate? nextPieceCoordinate;

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
