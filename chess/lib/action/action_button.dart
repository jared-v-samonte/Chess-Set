import 'package:flutter/material.dart';
import 'package:chess/action/action_button_mobile.dart';
import 'package:chess/action/action_button_monitor.dart';
import 'package:responsive_builder/responsive_builder.dart';


class ActionButton extends StatelessWidget
{
  const ActionButton(this.title);
  final String title;

  @override
  Widget build(BuildContext context) 
  {
    return ScreenTypeLayout
    (
      mobile: ActionButtonMobile(title),
      tablet: ActionButtonMonitor(title),
    );
  }
}