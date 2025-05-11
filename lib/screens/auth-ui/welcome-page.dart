import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App',style:TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
  
}