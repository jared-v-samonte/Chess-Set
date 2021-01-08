import 'package:flutter/material.dart';
import 'package:chess/widgets/navigation_drawer/drawer_item.dart';
import 'package:chess/widgets/navigation_drawer/drawer_header.dart';
import 'package:chess/route/names.dart';


class Drawer extends StatelessWidget 
{
  const Drawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      decoration: const BoxDecoration
      (
          color: Colors.white,
          boxShadow: 
          [
            BoxShadow(color: Colors.black12, blurRadius: 16)
          ]
      ),
      child: Column
      (
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
          const HeaderDrawer(),
          const DrawerItem('Home', Icons.help, HomeRoute),
          const DrawerItem('Content', Icons.videocam, ContentRoute),
          const DrawerItem('About', Icons.help, AboutRoute),
        ],
      ),
    );
  }
}