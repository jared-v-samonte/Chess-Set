import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:chess/views/home/home_mobile.dart';
import 'package:chess/views/home/home_monitor.dart';


class HomeView extends StatelessWidget 
{
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return ScreenTypeLayout
    (
      mobile:  const HomeMobile(),
      desktop:  const HomeMonitor(),
    );
              
  }
}
