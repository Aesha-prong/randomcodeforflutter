// Three button navigation
/*Write a program to create an app with four screens. Each screen must have three buttons
to re-direct to one of the three other screens. Use named routes*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    MaterialApp m = MaterialApp(home:const Screen1(),routes: {
      "/s1": (context)=> const Screen1(),
      "/s2": (context)=> const Screen2(),
      "/s3": (context)=> const Screen3()
    });
    return m;
  }
}

class Screen1 extends StatelessWidget
{

  const Screen1({super.key});
  @override
  Widget build(BuildContext context){

    ElevatedButton b2 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s2");}, child: const Text('Go To screen 2'));
    ElevatedButton b3 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s3");}, child: const Text('Go To screen 3'));
    ElevatedButton b4 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s4");}, child: const Text('Go To screen 4'));




    SizedBox gap = const SizedBox(height: 20,width: 20);

    Column cl =  Column(mainAxisAlignment: MainAxisAlignment.center,children: [b2,gap,b3,gap,b4]);

    Center ct = Center(child: cl);

    AppBar ab = AppBar(title: const Text('Screen 1'));

    Scaffold sf = Scaffold(appBar: ab,body: ct);

    MaterialApp m = MaterialApp(home: sf);
    return m;
  }
}

class Screen2 extends StatelessWidget
{

  const Screen2({super.key});
  @override
  Widget build(BuildContext context){

    ElevatedButton b1 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s2");}, child: const Text('Go To screen 2'));
    ElevatedButton b3 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s3");}, child: const Text('Go To screen 3'));
    ElevatedButton b4 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s4");}, child: const Text('Go To screen 4'));

    SizedBox gap = const SizedBox(height: 20,width: 20);

    Column cl =  Column(mainAxisAlignment: MainAxisAlignment.center,children: [b1,gap,b3,gap,b4]);

    Center ct = Center(child: cl);

    AppBar ab = AppBar(title: const Text('Screen 2'));

    Scaffold sf = Scaffold(appBar: ab,body: ct);

    MaterialApp m = MaterialApp(home: sf);
    return m;
  }
}

class Screen3 extends StatelessWidget
{

  const Screen3({super.key});
  @override
  Widget build(BuildContext context){

    ElevatedButton b2 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s2");}, child: const Text('Go To screen 2'));
    ElevatedButton b1 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s1");}, child: const Text('Go To screen 1'));
    ElevatedButton b4 = ElevatedButton(onPressed: (){Navigator.pushNamed(context,"/s4");}, child: const Text('Go To screen 4'));

    SizedBox gap = const SizedBox(height: 20,width: 20);

    Column cl =  Column(mainAxisAlignment: MainAxisAlignment.center,children: [b2,gap,b1,gap,b4]);

    Center ct = Center(child: cl);

    AppBar ab = AppBar(title: const Text('Screen 3'));

    Scaffold sf = Scaffold(appBar: ab,body: ct);

    MaterialApp m = MaterialApp(home: sf);
    return m;
  }
}

