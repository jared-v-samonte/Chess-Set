import 'package:flutter/material.dart';
import 'Board.dart';
import 'Cell.dart';

abstract class Piece extends StatelessWidget {
  bool killed = false;
  String shade = 'gray';
  AssetImage picture;

  Piece(String shade) {
    setShade(shade);
  }

  void setShade(String shade) {
    this.shade = shade;
  }

  bool isKilled() {
    return killed;
  }

  void setKilled(bool killed) {
    this.killed = killed;
  }

  AssetImage whatShade(String shade) {}

  bool canMove(Board board, Cell start, Cell end) {}

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: whatShade(shade),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.black, width: 8)),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ));
  }}
