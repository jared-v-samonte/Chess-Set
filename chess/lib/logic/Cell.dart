import 'package:chess/logic/EmptyCell.dart';
import 'package:chess/logic/Piece.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cell extends StatefulWidget {
  Cell(this.isFilled, this.piece);
  final bool isFilled;
  Piece piece;

  Border getBorder() {
    Color shadeOfSqure;
    if (isFilled) {
      shadeOfSqure = const Color(0xDD7F00FF); 
    } else {
      shadeOfSqure = const Color(0xFFFF3333);
    }
    return Border.all(color: shadeOfSqure, width: 4);
  }

  @override
  _CellState createState() => _CellState();
}

class _CellState extends State<Cell> {
  @override
  Widget build(BuildContext context) {
    DragTarget<Piece>(
      builder: (BuildContext context, List<Piece> incoming, List rejected) {
        if (widget.piece != null) {
          print('Dropped');
          return Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Color(0xDDFFFFFF)),
              child: Piece(widget.piece.row, widget.piece.column,
                  widget.isFilled, widget.piece.data));
        } else {
          print('Failed');
          return Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Color(0xDDFFFFFF), shape: BoxShape.rectangle),
              child: EmptyCell(widget.piece.isFilled, widget.piece));
        }
      },
      onWillAccept: (Piece data) =>
          widget.piece.data.canMove(data, widget.piece),
      onAccept: (Piece data) {
        setState(() {
          return Piece(widget.piece.row, widget.piece.column,
              widget.piece.isFilled, widget.piece.data);
        });
      },
      onLeave: (Object data) {
        setState(() {
          return EmptyCell(widget.piece.isFilled, widget.piece);
        });
      },
    );
    return Container();
  }
}
