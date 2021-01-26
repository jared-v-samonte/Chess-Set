import 'package:chess/logic/PieceData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Piece extends StatefulWidget {
  Piece(this.row, this.column, this.isFilled, this.data);
  final int row;
  final int column;
  final bool isFilled;
  PieceData data;

  int getRow() {
    return row;
  }

  int getColumn() {
    return column;
  }

  PieceData getPiece() {
    return data;
  }

  BoxShape getShape(bool dragged) {
    BoxShape shape;
    if (dragged) {
      shape = BoxShape.circle;
    } else {
      shape = BoxShape.rectangle;
    }
    return shape;
  }

  Border getBorder() {
    Color shadeOfSqure;
    if (isFilled) {
      shadeOfSqure = const Color(0xDD7F00FF); 
    } else {
      shadeOfSqure = const Color(0xFFFF3333);
    }
    return Border.all(color: shadeOfSqure, width: 4);
  }

  Border getFeedbackBorder() {
    Color shadeOfPiece;
    if (data.shade == 'blue') {
      shadeOfPiece = const Color(0xDD00FFFF); 
    } else {
      shadeOfPiece = const Color(0xFFFF66FF);
    }
    return Border.all(color: shadeOfPiece, width: 4);
  }

  BoxDecoration getDecoration(bool dragged) {
    const Color blankBackground = Color(0xDD000000);
    BoxDecoration cellDecoration;
    if (dragged == true) {
      cellDecoration = BoxDecoration(
          color: blankBackground,
          border: getBorder(),
          shape: getShape(dragged));
    } else {
      cellDecoration = BoxDecoration(
          color: blankBackground,
          border: getBorder(),
          image: DecorationImage(image: data.picture),
          shape: getShape(dragged));
    }
    return cellDecoration;
  }

  BoxDecoration getFeedback() {
    const Color blankBackground = Color(0xDD000000);
    return BoxDecoration(
        color: blankBackground,
        border: getFeedbackBorder(),
        image: DecorationImage(image: data.picture),
        shape: BoxShape.circle);
  }

  @override
  _PieceState createState() => _PieceState();
}

class _PieceState extends State<Piece> {
  @override
  Widget build(BuildContext context) {
    const bool dragged = true;
    return Container(
      child: Draggable(
        feedback: Container(width: 60, height: 60, decoration: widget.getFeedback()),
        child: Container(
          decoration: widget.getDecoration(!dragged),
        ),
        childWhenDragging: Container(decoration: widget.getDecoration(dragged)),
        
      ),
    );
  }
}
