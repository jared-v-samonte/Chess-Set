import 'package:flutter/material.dart';
import 'Board.dart';
import 'Cell.dart';
import 'Piece.dart';

class Queen extends Piece 
{
	Queen(String shade) : super(shade);

  @override
  AssetImage whatShade(String shade) 
  {
    AssetImage shadeOfSqure;
    if (shade == 'blue') 
    {
      shadeOfSqure = const AssetImage('assests/Chess_Pieces/Blue_Queen'); //.fromRGBO(255, 255, 255, 0.5)
    } 
    else 
    {
      shadeOfSqure= const AssetImage('assests/Chess_Pieces/Pink_Queen');  //(0, 0, 0, 1.0)
    }
    return shadeOfSqure;
  }

	@override
  bool canMove(Board board, Cell start, Cell end) 
  {
    int row;
    int column;
		// we can't move the piece to a spot that has 
		// a piece of the same colour 
		if (end.getPiece().whatShade(shade) == whatShade(shade)) 
    {
      return false;
    }
    row = start.getRow() - end.getRow();
    row = row.abs();
    column = start.getRow() - end.getRow();
    column = column.abs();
		return row * column == 2; 
	} 
} 
