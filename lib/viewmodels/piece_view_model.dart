import 'package:flutter/material.dart';

class PieceViewModel {
  final String name;
  final int column;
  final int row;
  final Image image;

  const PieceViewModel({
    this.name,
    this.column,
    this.row,
    this.image,
  });
}
