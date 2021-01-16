import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceData.dart';
import 'package:flutter/material.dart';

class Bishop extends PieceData {
  Bishop(String shade) {
    whatShade(shade);
  }

  @override
  void whatShade(String shade) {
    AssetImage shadeOfSqure;
    if (shade == 'blue') {
      shadeOfSqure = const AssetImage(
          'Chess_Pieces/Blue_Bishop.jpeg'); //.fromRGBO(255, 255, 255, 0.5)
    } else {
      shadeOfSqure =
          const AssetImage('Chess_Pieces/Pink_Bishop.jpeg'); //(0, 0, 0, 1.0)
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
