
import 'package:flutter/material.dart';
import 'package:chess/action/action_button.dart';
import 'package:chess/views/home/home.dart';

class HomeMobile extends StatelessWidget 
{
  const HomeMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>
      [
        HomeView(),
        const ActionButton('Join Course'),
      ],
    );
  }
}

