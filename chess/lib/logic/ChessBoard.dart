import 'package:chess/logic/Bishop.dart';
import 'package:chess/logic/Cell.dart';
import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/King.dart';
import 'package:chess/logic/Knight.dart';
import 'package:chess/logic/Pawn.dart';
import 'package:chess/logic/Queen.dart';
import 'package:chess/logic/Rooks.dart';
import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  Board();

  Cell chessBoard(int index) {
    const bool blank = false;
    const bool filled = true;
    const String shaded = 'blue';
    const String clear = 'pink';
    int counter = 0;
    int row;
    int column;
    for (int i = 0; i < 8 && counter <= index; i++) {
      for (int j = 0; j < 8 && counter <= index; j++) {
        row = i;
        column = j;
        counter++;
      }
    }
    final List<List<Cell>> gridState = [
      //row 1
      [
        Cell(true, Piece(row, column, blank, Rook(shaded))),
        Cell(true, Piece(row, column, filled, Knight(shaded))),
        Cell(true, Piece(row, column, blank, Bishop(shaded))),
        Cell(true, Piece(row, column, filled, Queen(shaded))),
        Cell(true, Piece(row, column, blank, King(shaded))),
        Cell(true, Piece(row, column, filled, Bishop(shaded))),
        Cell(true, Piece(row, column, blank, Knight(shaded))),
        Cell(true, Piece(row, column, filled, Rook(shaded))),
      ],
      //row 2
      [
        Cell(true, Piece(row, column, filled, Pawn(shaded))),
        Cell(true, Piece(row, column, blank, Pawn(shaded))),
        Cell(true, Piece(row, column, filled, Pawn(shaded))),
        Cell(true, Piece(row, column, blank, Pawn(shaded))),
        Cell(true, Piece(row, column, filled, Pawn(shaded))),
        Cell(true, Piece(row, column, blank, Pawn(shaded))),
        Cell(true, Piece(row, column, filled, Pawn(shaded))),
        Cell(true, Piece(row, column, blank, Pawn(shaded))),
        Cell(true, Piece(row, column, filled, Pawn(shaded))),
      ],
      //row 3
      [
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null)
      ],
      //row 4
      [
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null)
      ],
      //row 5
      [
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null)
      ],
      //row 6
      [
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null),
        Cell(filled, null),
        Cell(blank, null)
      ],
      //row 7
      [
        Cell(true, Piece(row, column, blank, Pawn(clear))),
        Cell(true, Piece(row, column, filled, Pawn(clear))),
        Cell(true, Piece(row, column, blank, Pawn(clear))),
        Cell(true, Piece(row, column, filled, Pawn(clear))),
        Cell(true, Piece(row, column, blank, Pawn(clear))),
        Cell(true, Piece(row, column, filled, Pawn(clear))),
        Cell(true, Piece(row, column, blank, Pawn(clear))),
        Cell(true, Piece(row, column, filled, Pawn(clear))),
        Cell(true, Piece(row, column, blank, Pawn(clear))),
      ],
      //row 8
      [
        Cell(true, Piece(row, column, filled, Rook(clear))),
        Cell(true, Piece(row, column, blank, Knight(clear))),
        Cell(true, Piece(row, column, filled, Bishop(clear))),
        Cell(true, Piece(row, column, blank, Queen(clear))),
        Cell(true, Piece(row, column, filled, King(clear))),
        Cell(true, Piece(row, column, blank, Bishop(clear))),
        Cell(true, Piece(row, column, filled, Knight(clear))),
        Cell(true, Piece(row, column, blank, Rook(clear))),
      ],
    ];

    print(row);
    print(column);
    print(index);
    return gridState[row][column];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 600,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600.0, maxHeight: 600.0),
        child: GridView.count(
          crossAxisCount: 8,
          shrinkWrap: true,
          children: List<Cell>.generate(64, (int index) {
            return chessBoard(index);
          }),
        ),
      ),
    );
  }
}