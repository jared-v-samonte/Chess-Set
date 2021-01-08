import 'package:flutter/material.dart';
import 'package:chess/widgets/navigation_bar/picture.dart';

class NavigationBarMobile extends StatelessWidget 
{
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      height: 80.0,
      width: 20.0,
      child: Row
      (
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>
        [
          IconButton
          (
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          const Picture('assets/profile_pic.jpg')
        ],
      ),
    );
  }
}