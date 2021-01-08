import 'package:flutter/material.dart';

class Picture extends StatelessWidget 
{
  const Picture(this.name);
  final String name;

  @override
  Widget build(BuildContext context) 
  {
    return SizedBox
    (
      height: 80,
      width: 150,
      child: Image.asset(name),
    );
  }
}