import 'package:flutter/material.dart';
import 'package:chess/logic/Cell.dart';
import 'package:chess/logic/Board.dart';


abstract class Piece 
{ 
	bool killed = false; 
	bool white = false; 

	Piece(bool white) 
	{ 
		setWhite(white); 
	} 

	bool isWhite() 
	{ 
		return this.white; 
	} 

	void setWhite(bool white) 
	{ 
		this.white = white; 
	} 

	bool isKilled() 
	{ 
		return this.killed; 
	} 

	void setKilled(bool killed) 
	{ 
		this.killed = killed; 
	} 

  bool canMove(Board board,Cell start,Cell end)
  {

  } 
} 
