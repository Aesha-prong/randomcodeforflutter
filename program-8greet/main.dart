import 'package:flutter/material.dart';
import 'package:program8/greet_file.dart';
import 'package:program8/login_file.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Program 8"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Login"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginFile()));
                },
              ),
              ListTile(
                title: Text("Greet"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> GreetFile()));
                },
              ),
              ListTile(
                title: Text("Login"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ),
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }

}