class PieceHelper {
  // List<List<PieceComponent?>> parseFEN(String fen, double pieceSize) {
  //   List<List<PieceComponent?>> board = List.generate(8, (i) => List.filled(8, null, growable: false), growable: false);

  //   final List<String> rows = fen.split(' ')[0].split('/');
  //   for (int row = 0; row < rows.length; row++) {
  //     int col = 0;
  //     for (int i = 0; i < rows[row].length; i++) {
  //       final String char = rows[row][i];
  //       final int? num = int.tryParse(char);
  //       if (num != null) {
  //         col += num;
  //       } else {
  //         final PieceComponent pieceComponent = PieceComponent(
  //           pieceType: char.toUpperCase(),
  //           playerColor: char == char.toUpperCase() ? PlayerColor.white : PlayerColor.black,
  //           pieceSize: pieceSize,
  //           position: Vector2(col.toDouble(), (7 - row).toDouble()),
  //         );

  //         board[7 - row][col] = pieceComponent;
  //         col++;
  //       }
  //     }
  //   }

  //   return board;
  // }
}
