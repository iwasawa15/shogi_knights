import 'package:flutter/material.dart';
import 'package:shogi_knights/ui/widgets/piece.dart';
import 'package:shogi_knights/viewmodels/piece_view_model.dart';

class PlayerField extends StatelessWidget {
  final String name;
  final List<PieceViewModel> handPieces;

  PlayerField({
    this.name = '',
    this.handPieces = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(name),
      Row(
        children: handPieces
            .map((PieceViewModel p) => Piece(piece: p, display: () {}))
            .toList(),
      ),
    ]);
  }
}
