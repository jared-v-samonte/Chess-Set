import 'package:chess/logic/Bishop.dart';
import 'package:chess/logic/EmptyCell.dart';
import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/King.dart';
import 'package:chess/logic/Knight.dart';
import 'package:chess/logic/Pawn.dart';
import 'package:chess/logic/Queen.dart';
import 'package:chess/logic/Rooks.dart';
import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  Board();

  Container chessBoard(int index) {
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
    final List<List<Container>> gridState = [
      //row 1
      [
        Container(child: Piece(row, column, blank, Rook(shaded))),
        Container(child: Piece(row, column, filled, Knight(shaded))),
        Container(child: Piece(row, column, blank, Bishop(shaded))),
        Container(child: Piece(row, column, filled, Queen(shaded))),
        Container(child: Piece(row, column, blank, King(shaded))),
        Container(child: Piece(row, column, filled, Bishop(shaded))),
        Container(child: Piece(row, column, blank, Knight(shaded))),
        Container(child: Piece(row, column, filled, Rook(shaded))),
      ],
      //row 2
      [
        Container(child: Piece(row, column, filled, Pawn(shaded))),
        Container(child: Piece(row, column, blank, Pawn(shaded))),
        Container(child: Piece(row, column, filled, Pawn(shaded))),
        Container(child: Piece(row, column, blank, Pawn(shaded))),
        Container(child: Piece(row, column, filled, Pawn(shaded))),
        Container(child: Piece(row, column, blank, Pawn(shaded))),
        Container(child: Piece(row, column, filled, Pawn(shaded))),
        Container(child: Piece(row, column, blank, Pawn(shaded))),
        Container(child: Piece(row, column, filled, Pawn(shaded))),
      ],
      //row 3
      [
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled)
      ],
      //row 4
      [
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank)
      ],
      //row 5
      [
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled)
      ],
      //row 6
      [
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank),
        EmptyCell(filled),
        EmptyCell(blank)
      ],
      //row 7
      [
        Container(child: Piece(row, column, blank, Pawn(clear))),
        Container(child: Piece(row, column, filled, Pawn(clear))),
        Container(child: Piece(row, column, blank, Pawn(clear))),
        Container(child: Piece(row, column, filled, Pawn(clear))),
        Container(child: Piece(row, column, blank, Pawn(clear))),
        Container(child: Piece(row, column, filled, Pawn(clear))),
        Container(child: Piece(row, column, blank, Pawn(clear))),
        Container(child: Piece(row, column, filled, Pawn(clear))),
        Container(child: Piece(row, column, blank, Pawn(clear))),
      ],
      //row 8
      [
        Container(child: Piece(row, column, filled, Rook(clear))),
        Container(child: Piece(row, column, blank, Knight(clear))),
        Container(child: Piece(row, column, filled, Bishop(clear))),
        Container(child: Piece(row, column, blank, Queen(clear))),
        Container(child: Piece(row, column, filled, King(clear))),
        Container(child: Piece(row, column, blank, Bishop(clear))),
        Container(child: Piece(row, column, filled, Knight(clear))),
        Container(child: Piece(row, column, blank, Rook(clear))),
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
          children: List<Container>.generate(64, (int index) {
            return chessBoard(index);
          }),
        ),
      ),
    );
  }
}
