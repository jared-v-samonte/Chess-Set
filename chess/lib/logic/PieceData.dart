import 'package:chess/logic/Piece.dart';
import 'package:flutter/material.dart';

abstract class PieceData extends StatelessWidget {
  bool killed = false;
  String shade;
  AssetImage picture;

  void setShade(String shade) {
    this.shade = shade;
  }

  bool isKilled() {
    return killed;
  }

  AssetImage getImage() {
    AssetImage image;
    if (picture != null) {
      image = picture;
    } 
    return image;
  }

  void setKilled(bool killed) {
    this.killed = killed;
  }

  void whatShade(String shade) {}

  bool canMove(Piece start, Piece end) {}

  @override
  Widget build(BuildContext context) {
    const double length = 60.0;
    return Container(
      width: length,
      height: length,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: picture,
          ),
          ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: length, maxHeight: length),
      ),
    );
  }
}
