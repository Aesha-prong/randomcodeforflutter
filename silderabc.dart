import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double v =5;
  String txt =" ";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vertical Slider using Rotated Box"),
        ),
        body: Center(
          child: Row(
            children: [
              RotatedBox(
                  quarterTurns: -1,
                  child: Slider(
                      label:'$v',
                      value: v,
                      min: 0,
                      max: 5,
                      onChanged: (double newValue){
                        setState(() {
                          v=newValue;
                          if(v==5){
                            txt = "Out of Range";
                          }
                          else{
                            txt = 'Current Slider Value = $v';
                          }
                          print('Current Slider Value = $v');
                          print(txt);
                        });
                      }
                  )
              ),

              Text(txt)
            ],
          ),
        ),
      ),
    );
  }
}