
import 'package:flutter/material.dart';
import 'package:chess/action/action_button.dart';
import 'package:chess/views/chess/chess.dart';

class ChessMobile extends StatelessWidget 
{
  const ChessMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>
      [
        const ChessView(),
        const ActionButton('Join Course'),
      ],
    );
  }
}

