import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


Color cellColor(bool isFilled)
{
  Color shadeOfSqure;
  if(isFilled)
      {
        shadeOfSqure =  const Color(0xDD000000);//.fromRGBO(255, 255, 255, 0.5)
      }
      else
      {
        shadeOfSqure = const Color(0xFFFFFFFF);//(0, 0, 0, 1.0)
      }
  return shadeOfSqure;
}

class Cell extends BoxDecoration 
{
  const Cell(this.row, this.column, this.isFilled, this.piece);
  final int row;
  final int column;
  final bool isFilled;
  final Piece piece;

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      decoration: BoxDecoration
      (
        color: cellColor(isFilled),
        image: const DecorationImage
        (
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          fit: BoxFit.cover,
        ),
        border: Border.all(color: Colors.black, width: 8)
      )
    );
  }
}


