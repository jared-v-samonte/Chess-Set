import 'package:flutter/material.dart';

class ActionButtonMobile extends StatelessWidget 
{
  
  const ActionButtonMobile(this.title);
  final String title;

  @override
  Widget build(BuildContext context) 
  {
    return  Container
    (
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),  
      alignment: Alignment.center,
      child: Text
      (
        title,
        style: TextStyle
        (
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration
      (
        color: Color.fromARGB(255, 31, 229, 146),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}