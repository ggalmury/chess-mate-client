import 'package:chess_mate_client/game/components/board/chess_board_component.dart';
import 'package:flame/components.dart';

class OpeningChessBoardComponent extends ChessBoardComponent {
  OpeningChessBoardComponent({required Vector2 position}) : super(position: position);

  void _addPieces() {}

  @override
  Future<void> onLoad() async {
    super.onLoad();

    _addPieces();
  }
}
