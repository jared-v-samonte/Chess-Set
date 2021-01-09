import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:chess/views/chess/chess_mobile.dart';
import 'package:chess/views/chess/chess_monitor.dart';


class ChessView extends StatelessWidget 
{
  const ChessView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return ScreenTypeLayout
    (
      mobile:  const ChessMobile(),
      desktop:  const ChessMonitor(),
    );
              
  }
}
