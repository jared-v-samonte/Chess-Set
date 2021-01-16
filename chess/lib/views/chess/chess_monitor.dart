import 'package:chess/logic/Cell.dart';
import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/Rooks.dart';
import 'package:flutter/material.dart';
import 'package:chess/logic/Board.dart';

class ChessMonitor extends StatelessWidget {
  const ChessMonitor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double length = 600;
    return Container(
        height: length,
        width: length,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: length,
                    maxHeight: length,
                    minWidth: length,
                    minHeight: length),
                child: Board(),
                ),
          ],
        ));
  }
}
