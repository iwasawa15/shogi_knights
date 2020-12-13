import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final String label;

  Button({
    this.onPressed,
    this.color = Colors.blue,
    this.label = '',
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(label),
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
    );
  }
}
