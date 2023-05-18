import 'package:flutter/material.dart';

void main() {
  runApp( const Starter());
}

class Starter extends StatelessWidget
{
  const Starter({super.key});

  @override
  Widget build(BuildContext context)
  {
    MaterialApp m = MaterialApp(home:const Home(),routes:{
      "/w":(context)=>const WelcomeScreen()
    });

    return m;

  }
}



class Home extends StatelessWidget
{
  const Home({super.key});
  @override
  Widget build(BuildContext context)
  {
    TextEditingController c1 = TextEditingController();
    TextEditingController c2 = TextEditingController();

    TextField tf1 = TextField(controller: c1,autofocus:true,decoration:const InputDecoration(helperText:"YES",border: OutlineInputBorder(),prefixIcon:Icon(Icons.face_rounded),labelText:'Username'));
    TextField tf2 = TextField(obscureText:true,controller: c2,decoration:const InputDecoration(border: OutlineInputBorder(),prefixIcon:Icon(Icons.password),label:Text('Password')));

    ElevatedButton b1 = ElevatedButton(onPressed: (){

      String username = c1.text;
      String password = c2.text;

      if(username=="admin" && password=="admin" )
      {
        Navigator.pushNamed(context,"/w");
        //print("$username  $password");
      }

      //print("$username  $password");

    }, child: const Text("Log-in"));
    ElevatedButton b2 = ElevatedButton(onPressed: (){

      c1.clear();
      c2.clear();

    }, child: const Text("Reset"));

    SizedBox gap = const SizedBox(height:20, width:20);

    Row r = Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: <Widget>[b1,gap,b2]);

    Column cl1 =  Column(mainAxisSize:MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.center,children: [tf1,tf2,gap,r]);


    SizedBox sb = SizedBox(height: 400, width: 200,child:cl1);

    Center ct = Center(child:sb);

    AppBar ab = AppBar(title: const Text("Login"));

    Scaffold sf = Scaffold(appBar: ab, body:ct);

    MaterialApp m = MaterialApp(home: sf);

    return m;
  }
}

class WelcomeScreen extends StatelessWidget
{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {

    AppBar ab = AppBar(title: const Text("Welcome"));

    Scaffold sf = Scaffold(appBar: ab);

    MaterialApp m = MaterialApp(home: sf);

    return m;


  }

}
