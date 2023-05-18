import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  int index=0;
  @override
  Widget build(BuildContext context) {

    ListView lv = ListView.builder(itemCount:4,itemBuilder:(content,index)
    {
      index++;
         ListTile item = ListTile(title: Text("Item-$index"));
        return item;

    });

     Drawer d =   Drawer(child:lv);



    return  MaterialApp(home: Scaffold(appBar:AppBar(title:Text("Drawer Demo")),drawer:d));

  }
}
