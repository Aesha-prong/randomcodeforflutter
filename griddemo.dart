import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    //Step-1 ----
    SliverGridDelegateWithFixedCrossAxisCount d =     const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20
    );

    //Step-2 ----
    List<Widget> data = [
      const ListTile(leading:Icon(Icons.man_2,size:60),title:Text('Profile'),tileColor:Colors.blue ,),
      const ListTile(leading:Icon(Icons.double_arrow_outlined,size:60),title:Text('Transfer Money'),tileColor:Colors.cyanAccent),
      const ListTile(leading:Icon(Icons.money,size:60),title:Text('Fixed Deposits'),tileColor:Colors.blue ,),
      const ListTile(leading:Icon(Icons.help_center,size:60),title:Text('Help'),tileColor:Colors.teal),
    ];

    //Step-3 ----
    GridView grid = GridView.builder(itemCount:4,gridDelegate: d, itemBuilder:(context,index)
    {
      return data[index];
    } );

    AppBar ab = AppBar(title:const Text("GridView Demo"));
    Center c = Center(child:grid);
    Scaffold sf = Scaffold(appBar:ab,body:c);
    MaterialApp m =MaterialApp(home:sf);

    return m;
  }
}
