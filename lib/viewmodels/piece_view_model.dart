import 'package:flutter/material.dart';

class PieceViewModel {
  final String name;
  final int column;
  final int row;
  final Image image;
  final int player;

  const PieceViewModel({
    this.name,
    this.column,
    this.row,
    this.image,
    this.player,
  });
}
