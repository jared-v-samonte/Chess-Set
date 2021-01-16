import 'package:chess/logic/Cell.dart';
import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/Rooks.dart';
import 'package:flutter/material.dart';
import 'package:chess/widgets/navigation_drawer/drawer_header.dart';
import 'package:chess/widgets/center/center_view.dart';
import 'package:chess/widgets/navigation_bar/bar.dart';
import 'package:chess/views/chess/chess.dart';
import 'package:chess/action/action_button.dart';
import 'package:responsive_builder/responsive_builder.dart';





class MainView extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    const double length = 600;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold
      (
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ?  const HeaderDrawer()
            : null,
        backgroundColor: Color(0xFF202020),
        body: CenterBox
        (
          child: Column
          (
            children: <Widget>
            [
              const ChessView(),
            ]
          )
        )
      )
    );
  }
}
