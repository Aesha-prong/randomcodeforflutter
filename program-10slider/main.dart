/* the textfields.
10 Create a flutter application with a slider. Range of this slider should be from 1 to 5. As and 
when the slider is adjusted, its current value should be displayed on the screen. However, if 
the value is 5, it should generated user-defined exception called “OutOfRange”.*/

import 'package:flutter/material.dart';
void main()=> runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double value = 1.0;
  String output="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Program-10"),
        ),
        body: Center(
          child: Column(
            children: [
              Slider(value: value, onChanged: (value){
                setState(() {
                  this.value = value;
                });
              },max: 5.0,min: 1.0,label: "Select Height",),
              Text(value.toStringAsFixed(2)),
              Divider(),


              Text(output)
            ],
          ),
        ),
      ),
    );
  }
}