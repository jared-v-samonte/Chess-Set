import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Piece.dart';

class Cell extends StatelessWidget {
  Cell(this.row, this.column, this.isFilled, this.piece);
  final int row;
  final int column;
  final bool isFilled;
  Piece piece;

  int getRow() {
    return row;
  }

  int getColumn() {
    return column;
  }

  Piece getPiece() 
  {
    return piece;
  }

  void setPiece(Piece piece)
  {
    this.piece = piece;
  }

  Color cellColor(bool isFilled) {
    Color shadeOfSqure;
    if (isFilled) {
      shadeOfSqure = const Color(0xDD000000); //.fromRGBO(255, 255, 255, 0.5)
    } else {
      shadeOfSqure = const Color(0xFFFFFFFF); //(0, 0, 0, 1.0)
    }
    return shadeOfSqure;
  }

  Widget build(BuildContext context) {
    return Container
    (
      child: Row
      (
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,        children:
        [
          ConstrainedBox
          (
            constraints: const BoxConstraints(maxWidth: 15.0, maxHeight: 15.0, minWidth: 15.0, minHeight: 15.0),
            child: getPiece()
          ),
        ]
      ),
      decoration: BoxDecoration
          (
              color: const Color(0xDD000000),
              border: Border.all(color: cellColor(isFilled), width: 8)
          )
    );
  }
}
