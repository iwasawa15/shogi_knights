import 'package:flutter/material.dart';
import 'package:shogi_knights/viewmodels/piece_view_model.dart';

import 'handPiece.dart';

class PlayerField extends StatelessWidget {
  final String name;
  final List<PieceViewModel> handPieces;
  final Function displayPlaces;

  static func(piece, places) {}

  PlayerField({
    this.name = '',
    this.handPieces = const [],
    this.displayPlaces = func,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(name),
      Row(
        children: handPieces
            .map((PieceViewModel p) =>
                HandPiece(piece: p, display: this.displayPlaces))
            .toList(),
      ),
    ]);
  }
}
