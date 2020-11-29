import 'package:flutter/material.dart';
import 'package:shogi_knights/viewmodels/piece_view_model.dart';
import 'package:shogi_knights/viewmodels/place_view_model.dart';

class Piece extends StatelessWidget {
  final PieceViewModel piece;
  final Function display;

  Piece({this.piece, this.display});

  List<PlaceViewModel> movablePlace(PieceViewModel piece) {
    switch (piece.name) {
      case 'fu':
        return [
          PlaceViewModel(
            column: piece.column,
            row: piece.row + 1,
          ),
        ];
        break;
      case 'kaku':
        return [
          PlaceViewModel(
            column: piece.column + 1,
            row: piece.row + 1,
          ),
        ];
      case 'hisha':
        return [
          PlaceViewModel(
            column: piece.column + 1,
            row: piece.row,
          ),
        ];
      case 'kyosha':
        return [
          PlaceViewModel(
            column: piece.column,
            row: piece.row + 1,
          ),
        ];
      case 'keima':
        return [
          PlaceViewModel(
            column: piece.column + 1,
            row: piece.row + 2,
          ),
        ];
      case 'gin':
        return [
          PlaceViewModel(
            column: piece.column,
            row: piece.row + 1,
          ),
        ];
      case 'kin':
        return [
          PlaceViewModel(
            column: piece.column,
            row: piece.row + 1,
          ),
        ];
      case 'ou':
        return [
          PlaceViewModel(
            column: piece.column,
            row: piece.row + 1,
          ),
        ];
      default:
        return [
          PlaceViewModel(
            column: piece.column,
            row: piece.row + 1,
          ),
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: piece.column * 34.5,
      top: piece.row * 34.5,
      width: 30.0,
      height: 30.0,
      child: GestureDetector(
        child: piece.image,
        onTap: () {
          List<PlaceViewModel> places = movablePlace(piece);
          this.display(piece, places);
        },
      ),
    );
  }
}
