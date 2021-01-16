import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceData.dart';
import 'package:flutter/material.dart';

class King extends PieceData {
  King(String shade) {
    super.shade = shade;
    whatShade(shade);
  }

  bool castlingDone = false;

  @override
  AssetImage whatShade(String shade) {
    AssetImage shadeOfSqure;
    if (shade == 'blue') {
      shadeOfSqure = const AssetImage(
          'Chess_Pieces/Blue_King.jpeg'); //.fromRGBO(255, 255, 255, 0.5)
    } else {
      shadeOfSqure =
          const AssetImage('Chess_Pieces/Pink_King.jpeg'); //(0, 0, 0, 1.0)
    }
    super.picture = shadeOfSqure;
    return shadeOfSqure;
  }

  bool isCastlingDone() {
    return castlingDone;
  }

  void setCastlingDone(bool castlingDone) {
    this.castlingDone = castlingDone;
  }

  @override
  bool canMove(Piece start, Piece end) {
    int row;
    int column;
    // we can't move the piece to a Piece that
    // has a piece of the same color
    if (start.data.shade == end.data.shade) {
      return false;
    }

    row = start.row - end.row;
    row = row.abs();
    column = start.getRow() - end.getRow();
    column = column.abs();
    if (row + column == 1) {
      // check if this move will not result in the king
      // being attacked if so return true
      return true;
    }

    return isValidCastling(start, end);
  }

  bool isValidCastling(Piece start, Piece end) {
    bool casting;
    if (isCastlingDone()) {
      casting = false;
    } else {
      casting = true;
    }
    return casting;
    // Logic for returning true or false
  }

  bool isCastlingMove(PieceData start, PieceData end) {
    // check if the starting and
    // ending position are correct
  }
}
