import 'package:flutter/material.dart';
import 'Board.dart';
import 'Cell.dart';
import 'Piece.dart';

class King extends Piece 
{
  King(String shade) : super(shade);
  bool castlingDone = false;

  @override
  AssetImage whatShade(String shade) 
  {
    AssetImage shadeOfSqure;
    if (shade == 'blue') 
    {
      shadeOfSqure = const AssetImage('assests/Chess_Pieces/Blue_King'); //.fromRGBO(255, 255, 255, 0.5)
    } 
    else 
    {
      shadeOfSqure= const AssetImage('assests/Chess_Pieces/Pink_King');  //(0, 0, 0, 1.0)
    }
    return shadeOfSqure;
  }


  bool isCastlingDone() {
    return castlingDone;
  }

  void setCastlingDone(bool castlingDone) {
    this.castlingDone = castlingDone;
  }

  @override
  bool canMove(Board board, Cell start, Cell end) 
  {
    int row;
    int column;
    // we can't move the piece to a Cell that
    // has a piece of the same color
		if (end.getPiece().whatShade(shade) == whatShade(shade)) 
    {
      return false;
    }

    row = start.getRow() - end.getRow();
    row = row.abs();
    column = start.getRow() - end.getRow();
    column = column.abs();
    if (row + column == 1) {
      // check if this move will not result in the king
      // being attacked if so return true
      return true;
    }

    return isValidCastling(board, start, end);
  }

  bool isValidCastling(Board board, Cell start, Cell end) 
  {
    bool casting;
    if (isCastlingDone()) 
    {
      casting = false;
    }
    else
    {
      casting = true;
    }
    return casting;
    // Logic for returning true or false
  }

  bool isCastlingMove(Cell start, Cell end) 
  {
    // check if the starting and
    // ending position are correct
  }
}
