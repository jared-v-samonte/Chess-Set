import 'package:flutter/material.dart';
import 'package:chess/constants/app_colors.dart';


class HeaderDrawer extends StatelessWidget 
{
  const HeaderDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column
      (
        mainAxisSize: MainAxisSize.min,
        children: <Widget>
        [
          const Text(
            'SKILL UP NOW',
            style: TextStyle
            (
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          const Text
          (
            'TAP HERE',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}