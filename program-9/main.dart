 /*Create a flutter application with two textfields for taking username and password as input. 
Also, provide two buttons: Login and Reset. Clicking on the Login button will check if both 
username and password are equal to admin. If so, display “Login Successful” else display 
“Login Failed” with the help of an alert dialog. Reset button should clear the contents from 
the textfields.*/


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Program 9"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: con1,
                decoration: InputDecoration(
                    labelText: "ID"
                ),
              ),
              TextField(
                controller: con2,
                decoration: InputDecoration(
                  labelText: "Password"
                ),
              ),
              ElevatedButton(onPressed: (){
                if(con1.text=="Admin" && con2.text=="Admin"){
                  showDialog(context: context, builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("System"),
                      content: Text("Login Successfully"),
                    );
                  },);
                }
                else{
                  var r = AlertDialog(
                    title: Text("System"),
                    content: Text("Login Failed"),
                  );
                  showDialog(context: context, builder: (BuildContext context) {
                    return r;
                  },);
                }
              }, child: Text("Signin")),
              ElevatedButton(onPressed: (){
                con1.clear();
                con2.clear();
              }, child: Text("Reset"))
            ],
          ),
        ),
      ),
    );
  }
}