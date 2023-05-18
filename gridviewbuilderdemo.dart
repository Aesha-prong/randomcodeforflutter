import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    SliverGridDelegateWithFixedCrossAxisCount d =  const SliverGridDelegateWithFixedCrossAxisCount
      (
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
    );

    List<Widget> data =
    [
      const ListTile(tileColor:Colors.deepPurpleAccent,leading:Icon(Icons.man,size:60,color:Colors.yellowAccent),title:Text('Profile')),
      const ListTile(tileColor:Colors.blue,leading:Icon(Icons.double_arrow,size:60,color:Colors.red),title:Text('Money Transfer')),
      const ListTile(tileColor:Colors.indigoAccent,leading:Icon(Icons.money,size:60,color:Colors.white),title:Text('Deposits')),
      const ListTile(tileColor:Colors.black12,leading:Icon(Icons.help,size:60,color:Colors.cyan),title:Text('Help'))
    ];

    GridView grid = GridView.builder(shrinkWrap:true,gridDelegate: d, itemCount: 4 , itemBuilder: (context,j)
    {
        return data[j];
    });

    return MaterialApp(home:Scaffold(body:Center(child:grid)));

  }
}
