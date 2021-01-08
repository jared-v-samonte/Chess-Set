import 'package:flutter/material.dart';
import 'package:chess/widgets/navigation_bar/bar_item.dart';


class DrawerItem extends StatelessWidget 
{
  const DrawerItem(this.title, this.icon, this.navigationPath);
  final String title;
  final IconData icon;
  final String navigationPath;

  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row
      (
        children: <Widget>
        [
          Icon(icon),
          const SizedBox(width: 30),
          BarItem(title, navigationPath),
        ],
      ),
    );
  }
}