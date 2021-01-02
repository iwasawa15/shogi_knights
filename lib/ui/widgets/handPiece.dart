import 'package:flutter/material.dart';
import 'package:shogi_knights/viewmodels/piece_view_model.dart';

class HandPiece extends StatelessWidget {
  final PieceViewModel piece;
  final Function display;

  static func(piece) {}

  HandPiece({
    this.piece = const PieceViewModel(),
    this.display = func,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 30.0, maxWidth: 30.0),
      child: GestureDetector(
        child: piece.image,
        onTap: () {
          this.display(piece);
        },
      ),
    );
  }
}
