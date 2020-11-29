import 'package:flutter/material.dart';

class PlayerField extends StatelessWidget {
  final String data;

  PlayerField({this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(data),
    );
  }
}
