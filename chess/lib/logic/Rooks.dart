import 'package:flutter/material.dart';
import 'Board.dart';
import 'Piece.dart';
import 'PieceData.dart';

class Rook extends PieceData {
  Rook(String shade) {
    super.shade = shade;
    whatShade(shade);
  }
  @override
  void whatShade(String shade) {
    AssetImage shadeOfSqure;
    if (shade == 'blue') {
      shadeOfSqure = const AssetImage(
          'Chess_Pieces/Blue_Rook.jpeg'); //.fromRGBO(255, 255, 255, 0.5)
    } else {
      shadeOfSqure =
          const AssetImage('Chess_Pieces/Pink_Rook.jpeg'); //(0, 0, 0, 1.0)
    }
    super.picture = shadeOfSqure;
  }

  @override
  bool canMove(Piece start, Piece end) {
    int row;
    int column;
    // we can't move the piece to a spot that has
    // a piece of the same colour
    if (start.data.shade == end.data.shade) {
      return false;
    }
    row = start.getRow() - end.getRow();
    row = row.abs();
    column = start.getRow() - end.getRow();
    column = column.abs();
    return row * column == 2;
  }
}
