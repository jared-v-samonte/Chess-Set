import 'package:flutter/material.dart';
import 'Bishop.dart';
import 'Cell.dart';
import 'King.dart';
import 'Knight.dart';
import 'Pawn.dart';
import 'Queen.dart';
import 'Rooks.dart';

List getBox(int x, int y) {
  final List locations = List<dynamic>.generate(2, (i) => [0, 0], growable: false);
  if (x < 0 || x > 7 || y < 0 || y > 7) {
    throw Exception("Index out of bound");
  }

  return locations[x][y];
}

Cell chessBoard(int row, int column) {
  const bool blank = false;
  const bool filled = true;
  const String shaded = 'blue';
  const String clear = 'pink';
  List<List<Cell>> gridState = [
    //row 1
    [
      Cell(0, 0, blank, Rook(shaded)),
      Cell(0, 1, filled, Knight(shaded)),
      Cell(0, 2, blank, Bishop(shaded)),
      Cell(0, 3, filled, Queen(shaded)),
      Cell(0, 4, blank, King(shaded)),
      Cell(0, 5, filled, Bishop(shaded)),
      Cell(0, 7, blank, Knight(shaded)),
      Cell(0, 0, filled, Rook(shaded)),
    ],
    //row 2
    [
      Cell(1, 0, filled, Pawn(shaded)),
      Cell(1, 1, blank, Pawn(shaded)),
      Cell(1, 2, filled, Pawn(shaded)),
      Cell(1, 3, blank, Pawn(shaded)),
      Cell(1, 4, filled, Pawn(shaded)),
      Cell(1, 5, blank, Pawn(shaded)),
      Cell(1, 6, filled, Pawn(shaded)),
      Cell(1, 7, blank, Pawn(shaded)),
      Cell(1, 8, filled, Pawn(shaded)),
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
      Cell(6, 0, blank, Pawn(clear)),
      Cell(6, 1, filled, Pawn(clear)),
      Cell(6, 2, blank, Pawn(clear)),
      Cell(6, 3, filled, Pawn(clear)),
      Cell(6, 4, blank, Pawn(clear)),
      Cell(6, 5, filled, Pawn(clear)),
      Cell(6, 6, blank, Pawn(clear)),
      Cell(6, 7, filled, Pawn(clear)),
      Cell(6, 8, blank, Pawn(clear)),
    ],
    //row 8
    [
      Cell(7, 1, filled, Knight(clear)),
      Cell(7, 2, blank, Bishop(clear)),
      Cell(7, 3, filled, Queen(clear)),
      Cell(7, 4, blank, King(clear)),
      Cell(7, 5, filled, Bishop(clear)),
      Cell(7, 7, blank, Knight(clear)),
      Cell(7, 0, filled, Rook(clear)),
    ],
  ];
  return gridState[row][column];
  /*
    final List<List<Cell>> ChessSet = List.generate(8, (int i) => 
    [
      Cell(0, 0, null, null),
      Cell(0, 0, null, null),
      Cell(0, 0, null, null),
      Cell(0, 0, null, null),
      Cell(0, 0, null, null),
      Cell(0, 0, null, null),
      Cell(0, 0, null, null),
      Cell(0, 0, null, null),
    ],
    growable: false);
  */
}
class Board extends StatelessWidget
{
  const Board();
  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      child: ConstrainedBox
        (
          constraints: const BoxConstraints(maxWidth: 1000.0, maxHeight: 1000.0),
          child: GridView.count
          (
            crossAxisCount: 64,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate
            (8, (int i) 
              {
                for (var j = 0; j < 8; j++) 
                {
                  return chessBoard(i, j);
                }
              }
            ),
          ),
        ),
    );
  }
}
