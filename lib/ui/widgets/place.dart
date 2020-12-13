import 'package:flutter/material.dart';
import 'package:shogi_knights/viewmodels/place_view_model.dart';

class Place extends StatelessWidget {
  final PlaceViewModel place;
  final Function move;

  static func() {}
  const Place({
    this.place = const PlaceViewModel(),
    this.move = func,
  });

  @override
  Widget build(BuildContext context) {
    if (place.column < 1 ||
        place.column > 9 ||
        place.row < 1 ||
        place.row > 9) {
      return Container();
    }
    return Positioned(
      left: place.column * 34.5,
      top: place.row * 34.5,
      width: 30.0,
      height: 30.0,
      child: GestureDetector(
        child: Container(
          color: Colors.orange[100]!.withOpacity(0.5),
        ),
        onTap: () {
          this.move(place);
        },
      ),
    );
  }
}
