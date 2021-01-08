import 'package:flutter/material.dart';
import 'package:chess/widgets/navigation_bar/navigation_bar_monitor.dart';
import 'package:chess/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Bar extends StatelessWidget 
{
  const Bar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return ScreenTypeLayout(
      mobile: const NavigationBarMobile(),
      tablet: const NavigationBarMonitor(),
    );
  }
}