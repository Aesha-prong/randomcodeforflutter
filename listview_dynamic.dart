import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  int index=0;

  @override
  Widget build(BuildContext context)
  {
    //index=index+1;
  print("build() called....");

    ListView list = ListView.builder(itemCount:8,itemBuilder:(context,index)
    {
      print("itemBuilder() called....");

      index++;
      ElevatedButton btn = ElevatedButton(onPressed: (){},child: Text('Button ~ $index'));
      return btn;
      //ListTile item = ListTile(title:Text('Item No. $index'));
      //return item;
    } );

    Center c = Center(child:list);
    AppBar ab = AppBar(title:const Text('ListView builder Demo'));

    Scaffold sf = Scaffold(appBar:ab,body:c);
    MaterialApp m =MaterialApp(home:sf);

    return m;



  }
}
