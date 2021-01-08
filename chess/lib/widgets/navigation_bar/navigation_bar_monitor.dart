import 'package:flutter/material.dart';
import 'package:chess/widgets/navigation_bar/picture.dart';
import 'package:chess/widgets/navigation_bar/bar_item.dart';
import 'package:chess/route/names.dart';


class NavigationBarMonitor extends StatelessWidget
{
  const NavigationBarMonitor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      height: 200,
      width:900,
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>
        [
          const Picture('assets/profile_pic.jpg'),
          const SizedBox(width: 40),
          const BarItem('Home', HomeRoute),
          const SizedBox(width: 60),
          const BarItem('Content', ContentRoute),
          const SizedBox(width: 60),
          const BarItem('About', AboutRoute)
        ]
      )
    );
  }
}