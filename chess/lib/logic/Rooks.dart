import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceData.dart';
import 'package:flutter/material.dart';


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
          'Chess_Pieces/Blue_Rook.jpeg'); 
    } else {
      shadeOfSqure =
          const AssetImage('Chess_Pieces/Pink_Rook.jpeg');
    }
    super.picture = shadeOfSqure;
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
}
