import 'package:flutter/material.dart';
import 'package:chess/logic/Cell.dart';


List getBox(int x, int y) 
{ 
  List locations = List<dynamic>.generate(2, (i) => [0,0], growable: false);
  if (x < 0 || x > 7 || y < 0 || y > 7) { 
    throw new Exception("Index out of bound"); 
  } 

  return locations[x][y]; 
}

List<List<Cell>> resetBoard(List<Cell>locations) 
	{ 
    bool blank = false;
    bool filled = true;
    List<List<Cell>> gridState = 
    [
      //row 1
      [
        Cell(0, 0, blank, Rook(true)),
        Cell(0, 1, filled, Knight(true)), 
        Cell(0, 2, blank, Bishop(true)), 
        Cell(0, 3, filled, Queen(true)), 
        Cell(0, 4, blank, King(true)), 
        Cell(0, 5, filled, Bishop(true)), 
        Cell(0, 7, blank, Knight(true)), 
        Cell(0, 0, filled, Rook(true)),
      ],
      //row 2
      [
        Cell(1, 0, filled, Pawn(true)), 
        Cell(1, 1, blank, Pawn(true)), 
        Cell(1, 2, filled, Pawn(true)),
        Cell(1, 3, blank, Pawn(true)), 
        Cell(1, 4, filled, Pawn(true)),
        Cell(1, 5, blank, Pawn(true)), 
        Cell(1, 6, filled, Pawn(true)),
        Cell(1, 7, blank, Pawn(true)), 
        Cell(1, 8, filled, Pawn(true)),
      ],
      //row 3
      [
        Cell(2, 0, blank, null), 
        Cell(2, 1, filled, null), 
        Cell(2, 2, blank, null),
        Cell(2, 3, filled, null), 
        Cell(2, 4, blank, null),
        Cell(2, 5, filled, null), 
        Cell(2, 6, blank, null),
        Cell(2, 7, filled, null), 
        Cell(2, 8, blank, null),
      ],
      //row 4
      [
        Cell(3, 0, filled, null), 
        Cell(3, 1, blank, null), 
        Cell(3, 2, filled, null),
        Cell(3, 3, blank, null), 
        Cell(3, 4, filled, null),
        Cell(3, 5, blank, null), 
        Cell(3, 6, filled, null),
        Cell(3, 7, blank, null), 
        Cell(3, 8, filled, null),
      ],
      //row 5
      [
        Cell(4, 0, blank, null), 
        Cell(4, 1, filled, null), 
        Cell(4, 2, blank, null),
        Cell(4, 3, filled, null), 
        Cell(4, 4, blank, null),
        Cell(4, 5, filled, null), 
        Cell(4, 6, blank, null),
        Cell(4, 7, filled, null), 
        Cell(4, 8, blank, null),
      ],
      //row 6
      [
        Cell(5, 0, filled, null), 
        Cell(5, 1, blank, null), 
        Cell(5, 2, filled, null),
        Cell(5, 3, blank, null), 
        Cell(5, 4, filled, null),
        Cell(5, 5, blank, null), 
        Cell(5, 6, filled, null),
        Cell(5, 7, blank, null), 
        Cell(5, 8, filled, null),
      ],
      //row 7
      [
        Cell(6, 0, blank, Pawn(true)), 
        Cell(6, 1, filled, Pawn(true)), 
        Cell(6, 2, blank, Pawn(true)),
        Cell(6, 3, filled, Pawn(true)), 
        Cell(6, 4, blank, Pawn(true)),
        Cell(6, 5, filled, Pawn(true)), 
        Cell(6, 6, blank, Pawn(true)),
        Cell(6, 7, filled, Pawn(true)), 
        Cell(6, 8, blank, Pawn(true)),
      ],
      //row 8
      [
        Cell(0, 1, filled, Knight(true)), 
        Cell(0, 2, blank, Bishop(true)), 
        Cell(0, 3, filled, Queen(true)), 
        Cell(0, 4, blank, King(true)), 
        Cell(0, 5, filled, Bishop(true)), 
        Cell(0, 7, blank, Knight(true)), 
        Cell(0, 0, filled, Rook(true)),
      ],
    ];
    return gridState;


		/*/ initialize white pieces 
		locations[0][0] = Cell(0, 0, filled, Rook(true)); 
		locations[0][1] = Cell(0, 1, blank, Knight(true)); 
		locations[0][2] = Cell(0, 2, filled, Bishop(true));
    locations[0][3] = Cell(0, 3, blank, Queen(true));
    locations[0][4] = Cell(0, 4, filled, King(true)); 
    locations[0][5] = Cell(0, 5, blank, Bishop(true));
    locations[0][6] = Cell(0, 6, filled, Bishop(true));
    locations[0][7] = Cell(0, 7, blank, Knight(true)); 
    locations[0][8] = Cell(0, 8, filled, Rook(true)); 

		// intialize white pawns 
		locations[1][0] = Cell(1, 0, blank, Pawn(true)); 
		locations[1][1] = Cell(1, 1, filled, Pawn(true)); 
  	locations[1][2] = Cell(1, 2, blank, Pawn(true)); 
		locations[1][3] = Cell(1, 3, filled, Pawn(true)); 
		locations[1][4] = Cell(1, 4, blank, Pawn(true)); 
		locations[1][5] = Cell(1, 5, filled, Pawn(true)); 
    locations[1][6] = Cell(1, 6, blank, Pawn(true)); 
		locations[1][7] = Cell(1, 7, filled, Pawn(true)); 
    locations[1][8] = Cell(1, 8, blank, Pawn(true)); 



		//... 

		// initialize black pieces 
		locations[7][0] = Cell(7, 0, new Rook(false)); 
		locations[7][1] = Cell(7, 1, new Knight(false)); 
		locations[7][2] = Cell(7, 2, new Bishop(false)); 
		//... 
		locations[6][0] = Cell(6, 0, new Pawn(false)); 
		locations[6][1] = Cell(6, 1, new Pawn(false)); 
		//... 

		// initialize remaining locations without any piece 
		for (int i = 2; i < 6; i++) { 
			for (int j = 0; j < 8; j++) { 
				locations[i][j] = new Cell(i, j, null); 
			} 
		}
    */ 
	} 


class Board 
{ 
	const Board()

  @override
  Widget build(BuildContext context) 
  {
    int gridStateLength = 8;
    return Container
    (
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration
      (
        border: Border.all(color: Colors.black, width: 2.0)
      ),
      child: GridView.builder
      (
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (
          crossAxisCount: gridStateLength,
        ),
        itemBuilder: _buildGridItems,
        itemCount: gridStateLength * gridStateLength,
      ),
    ); //final locations = List<Cell>.generate(8, (i) => 8, growable: false);
  }
} 
