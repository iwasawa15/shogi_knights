import 'package:flutter/material.dart';
import 'package:shogi_knights/viewmodels/piece_view_model.dart';

class PieceRepository {
  List<PieceViewModel> myPieces = [
    PieceViewModel(
        name: 'fu', column: 1, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 2, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 3, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 4, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 5, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 6, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 7, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 8, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 9, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 9, row: 7, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'kaku', column: 2, row: 8, image: Image.asset('images/kaku.png')),
    PieceViewModel(
        name: 'hisha',
        column: 8,
        row: 8,
        image: Image.asset('images/hisha.png')),
    PieceViewModel(
        name: 'kyosha',
        column: 1,
        row: 9,
        image: Image.asset('images/kyosha.png')),
    PieceViewModel(
        name: 'keima',
        column: 2,
        row: 9,
        image: Image.asset('images/keima.png')),
    PieceViewModel(
        name: 'gin', column: 3, row: 9, image: Image.asset('images/gin.png')),
    PieceViewModel(
        name: 'kin', column: 4, row: 9, image: Image.asset('images/kin.png')),
    PieceViewModel(
        name: 'ou', column: 5, row: 9, image: Image.asset('images/ou.png')),
    PieceViewModel(
        name: 'kin', column: 6, row: 9, image: Image.asset('images/kin.png')),
    PieceViewModel(
        name: 'gin', column: 7, row: 9, image: Image.asset('images/gin.png')),
    PieceViewModel(
        name: 'keima',
        column: 8,
        row: 9,
        image: Image.asset('images/keima.png')),
    PieceViewModel(
        name: 'fu', column: 9, row: 9, image: Image.asset('images/kyosha.png')),
  ];

  List<PieceViewModel> enemyPieces = [
    PieceViewModel(
        name: 'fu', column: 1, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 2, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 3, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 4, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 5, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 6, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 7, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 8, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 9, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'fu', column: 9, row: 3, image: Image.asset('images/fu.png')),
    PieceViewModel(
        name: 'kaku', column: 2, row: 2, image: Image.asset('images/kaku.png')),
    PieceViewModel(
        name: 'hisha',
        column: 8,
        row: 2,
        image: Image.asset('images/hisha.png')),
    PieceViewModel(
        name: 'kyosha',
        column: 1,
        row: 1,
        image: Image.asset('images/kyosha.png')),
    PieceViewModel(
        name: 'keima',
        column: 2,
        row: 1,
        image: Image.asset('images/keima.png')),
    PieceViewModel(
        name: 'gin', column: 3, row: 1, image: Image.asset('images/gin.png')),
    PieceViewModel(
        name: 'kin', column: 4, row: 1, image: Image.asset('images/kin.png')),
    PieceViewModel(
        name: 'ou', column: 5, row: 1, image: Image.asset('images/ou.png')),
    PieceViewModel(
        name: 'kin', column: 6, row: 1, image: Image.asset('images/kin.png')),
    PieceViewModel(
        name: 'gin', column: 7, row: 1, image: Image.asset('images/gin.png')),
    PieceViewModel(
        name: 'keima',
        column: 8,
        row: 1,
        image: Image.asset('images/keima.png')),
    PieceViewModel(
        name: 'fu', column: 9, row: 1, image: Image.asset('images/kyosha.png')),
  ];

  List<PieceViewModel> getPiece() {
    List<PieceViewModel> pieces = [...myPieces, ...enemyPieces];
    return pieces;
  }
}
