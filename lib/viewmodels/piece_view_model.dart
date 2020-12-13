import 'package:flutter/material.dart';

class PieceViewModel {
  final String name;
  final int column;
  final int row;
  final Image? image;
  final int player;

  const PieceViewModel({
    this.name = '',
    this.column = 0,
    this.row = 0,
    this.image,
    this.player = 1,
  });
}
