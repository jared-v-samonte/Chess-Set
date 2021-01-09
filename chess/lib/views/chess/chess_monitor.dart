
import 'package:flutter/material.dart';
import 'package:chess/logic/Board.dart';

class ChessMonitor extends StatelessWidget 
{
  const ChessMonitor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      child: Row
      (
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
          const Board(),
        ],
      )
    );
  }
}