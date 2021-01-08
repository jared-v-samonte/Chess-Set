import 'package:flutter/material.dart';

class ActionButtonMonitor extends StatelessWidget 
{
  
  const ActionButtonMonitor(this.title);
  final String title;

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      constraints: BoxConstraints(minHeight: 55.0, minWidth: 250.0),
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text
      (
        title,
        textAlign: TextAlign.center,
        style: TextStyle
        (
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration
      (
          color: Colors.white12,
          borderRadius: BorderRadius.circular(5)),
    );
  }
}