import 'package:chess/logic/Piece.dart';
import 'package:flutter/material.dart';

class EmptyCell extends StatefulWidget {
  EmptyCell(this.isFilled, this.piece);
  final bool isFilled;
  final Piece piece;
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
  _EmptyCell createState() => _EmptyCell();
}

class _EmptyCell extends State<EmptyCell> {
  @override
  Border getBorder(bool filled) {
    Color shadeOfBorder;
    if (filled) {
      shadeOfBorder = const Color(0xDD7F00FF);
    } else {
      shadeOfBorder = const Color(0xFFFF3333);
    }
    return Border.all(color: shadeOfBorder, width: 4);
  }

  BoxDecoration getDecoration(bool filled) {
    const Color blankBackground = Color(0xDD000000);
    return BoxDecoration(
        color: blankBackground,
        border: getBorder(filled),
        shape: BoxShape.rectangle);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      Positioned(
          child: widget.piece == null
              ? Container()
              : DragTarget<Piece>(
                  builder: (BuildContext context, List<Piece> incoming,
                      List rejected) {
                    if (widget.piece != null) {
                      print('Dropped');
                      return Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(color: Color(0xDDFFFFFF)),
                          child: Piece(widget.piece.row, widget.piece.column, widget.isFilled,
                              widget.piece.data));
                    } else {
                      print('Failed');
                      return Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(color: Color(0xDDFFFFFF)),
                          child: EmptyCell(widget.piece.isFilled, widget.piece));
                    }
                  },
                  onWillAccept: (Piece data) => widget.piece.data.canMove(data, widget.piece),
                  onAccept: (Piece data) {
                    setState(() {
                      return Piece(
                          widget.piece.row, widget.piece.column, widget.piece.isFilled, widget.piece.data);
                    });
                  },
                  onLeave: (Object data) {
                    setState(() {
                      return EmptyCell(widget.isFilled, widget.piece);
                    });
                  },
                )),
      Positioned(
          child: DragTarget<Piece>(
        builder: (BuildContext context, List<Piece> accepted,
                List<dynamic> rejected) =>
            Container(
          height: 100,
          width: 100,
          decoration: getDecoration(widget.isFilled),
          child: widget.piece,
        ),
        onAccept: (Piece chessPiece) {
          setState(() {
            return EmptyCell(widget.isFilled, widget.piece);
          });
        },
      ))
    ]));
  }
}
