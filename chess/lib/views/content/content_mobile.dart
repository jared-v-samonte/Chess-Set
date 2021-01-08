import 'package:flutter/material.dart';
import 'package:chess/action/action_button.dart';
import 'package:chess/views/content/content.dart';

class ContentMobile extends StatelessWidget 
{
  const ContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return 
    Expanded
    (
      child: Column
      (
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
          ContentView(),
          const SizedBox(height: 100.0),
          const Expanded
          (
            child: ActionButton('See More!')
          )
        ],
      )
    );
  }
}