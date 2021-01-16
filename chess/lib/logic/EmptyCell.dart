import 'package:flutter/material.dart';

class EmptyCell extends Container {
  EmptyCell(this.filled);
  bool filled;

  Border getBorder(bool filled) {
    Color shadeOfBorder;
    if (filled) {
      shadeOfBorder = const Color(0xDD7F00FF); //.fromRGBO(255, 255, 255, 0.5)
    } else {
      shadeOfBorder = const Color(0xFFFF3333); //(0, 0, 0, 1.0)
    }
    return Border.all(color: shadeOfBorder, width: 4);
  }

  BoxDecoration getDecoration(bool filled) {
    const Color blankBackground = Color(0xDD000000);
    return BoxDecoration(
        color: blankBackground,
        border: getBorder(filled),
        shape: BoxShape.rectangle);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: getDecoration(filled),
        );
  }
}
