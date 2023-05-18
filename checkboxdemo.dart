import 'package:flutter/material.dart';

void main() {
  runApp(const Demo());
}

class Demo extends StatefulWidget
{
  const Demo({super.key});

  @override
  UI createState() => UI();
}
var skill="";
class UI extends State<Demo>
{
  @override
  Widget build(BuildContext context)
  {
    Radio r1 = Radio(value:'Java',groupValue: skill,
    onChanged: (value)
    {
      setState(() {
        skill = value;
             }
             );
    } );

    Radio r2 = Radio(value:'Flutter',groupValue: skill,
        onChanged: (value)
        {
          setState(() {
            skill = value;
          }
          );
        }
        );

    Text msg =  Text("You have selected : $skill");
    ListTile lt1 = ListTile(leading:r1,title:const Text("Java"));
    ListTile lt2 = ListTile(leading:r2,title:const Text("Flutter"));
    ListTile lt3 = ListTile(leading:msg);
    Column cl = Column(crossAxisAlignment:MainAxisAlignment.center,mainAxisSize:MainAxisSize.min,children:<Widget>[lt1,lt2,lt3]);
    Scaffold s = Scaffold(appBar: AppBar(title: const Text("Radio button Demo")),body:cl);
    MaterialApp m = MaterialApp(home:s);
    return m;
  }


}