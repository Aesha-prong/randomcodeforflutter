import 'package:flutter/material.dart';

class LoginFile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Program 8"),
        ),
        body: Center(
          child: Text("Login Page"),
        ),
      ),
    );
  }

}