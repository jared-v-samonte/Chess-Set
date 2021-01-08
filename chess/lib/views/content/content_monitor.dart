import 'package:flutter/material.dart';
import 'package:chess/action/action_button.dart';
import 'package:chess/views/content/content.dart';

class ContentMonitor extends StatelessWidget 
{
  const ContentMonitor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Row(
      children: <Widget>
      [
        ContentView(),
        const Expanded
        (
          child: ActionButton('See More!'),
        )
      ],
    );
  }
}