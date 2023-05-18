import 'package:flutter/material.dart';

class GreetFile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Program 8"),
        ),
        body: Center(
          child: Text("Good Morning Have a Nice Day!"),
        ),
      ),
    );
  }

}