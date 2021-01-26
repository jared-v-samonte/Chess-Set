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
          'Chess_Pieces/Blue_King.jpeg'); 
    } else {
      shadeOfSqure =
          const AssetImage('Chess_Pieces/Pink_King.jpeg');
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
    bool makeMove;
    makeMove = false;
    if (end == null) {
      makeMove = true;
    }
    return makeMove;
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
