import 'package:flutter/material.dart';


class CenterBox extends StatelessWidget 
{
  const CenterBox({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60.0),
      alignment: Alignment.topCenter,
      child: ConstrainedBox
      (
        constraints: const BoxConstraints(maxWidth: 1200.0, maxHeight: 600.0),
        child: child,
      ),
    );
  }
}