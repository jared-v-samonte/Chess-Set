import 'package:flutter/material.dart';
import 'package:chess/views/main/main_view.dart';
import 'package:chess/locator.dart';


void main() 
{
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      title: 'Flutter Demo',
      theme: ThemeData
      (
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply
          (
            fontFamily: 'Recharge',
          )      
        ),
      home: MainView()
    );
  }
}