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
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold
      (
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ?  const HeaderDrawer()
            : null,
        backgroundColor: Colors.purple[800],
        body: CenterBox
        (
          child: Column
          (
            children: <Widget>
            [
              const Bar(),
              const SizedBox
              (
                width: 60,
              ),
              const ChessView(),
              const Expanded
              (
                child: ActionButton('press me')
              ) 
            ]
          )
        )
      )
    );
  }
}
