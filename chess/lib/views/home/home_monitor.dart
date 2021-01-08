
import 'package:flutter/material.dart';
import 'package:chess/action/action_button.dart';
import 'package:chess/widgets/details/details.dart';

class HomeMonitor extends StatelessWidget 
{
  const HomeMonitor({Key key}) : super(key: key);

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
          const Details(),
          Expanded
          (
            child: Column
            (
              mainAxisSize: MainAxisSize.max,
              children:<Widget>
              [
                const ActionButton('See More!'),
                const Padding
                (
                  padding: EdgeInsets.all(15.0)
                ),
                const ActionButton('Join Course'),
              ]
            )
          ),
        ],
      )
    );
  }
}