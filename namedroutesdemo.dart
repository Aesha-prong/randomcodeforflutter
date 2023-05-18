import 'package:flutter/material.dart';

void main()
{
  runApp(const Home());
}

class Home extends StatelessWidget
{
  const Home({super.key});

   @override
  Widget build(BuildContext context)
  {
    AppBar ab = AppBar(title:const Text("Named Routes"));
    Scaffold sf = Scaffold(appBar:ab);
    MaterialApp m = MaterialApp(home:const Screen1(),routes:
        {
          "/s1":(context)=>const Screen1(),
          "/s2":(context)=>const Screen2(),
           "/s3":(context)=>const Screen3(),
          "/s4":(context)=>const Screen4(),

        });
     return m;
  }
}
class Screen1 extends StatelessWidget
{
  const Screen1({super.key});

  @override
  Widget build(BuildContext context)
  {
      ElevatedButton b2 = ElevatedButton(onPressed:() { Navigator.pushNamed(context,"/s2"); }, child: const Text("Go to Screen-2"));
      ElevatedButton b3 = ElevatedButton(onPressed:() {Navigator.pushNamed(context,"/s3");}, child: const Text("Go to Screen-3"));
      ElevatedButton b4 = ElevatedButton(onPressed:() {Navigator.pushNamed(context,"/s4");}, child: const Text("Go to Screen-4"));

      SizedBox gap = const SizedBox(width:20,height:20);

      Column cl = Column(mainAxisAlignment: MainAxisAlignment.center,children: [b2,gap,b3,gap,b4]);
      Center cn = Center(child:cl);
      AppBar ab = AppBar(title:const Text("Screen-1"));
      Scaffold sf = Scaffold(appBar:ab,body:cn);
      return sf;
  }// End of build()
} // End of Screen1 class

class Screen2 extends StatelessWidget
{
  const Screen2({super.key});

  @override
  Widget build(BuildContext context)
  {
    ElevatedButton b1 = ElevatedButton(onPressed:() { Navigator.pushNamed(context,"/s1"); }, child: const Text("Go to Screen-1"));
    ElevatedButton b3 = ElevatedButton(onPressed:() {Navigator.pushNamed(context,"/s3");}, child: const Text("Go to Screen-3"));
    ElevatedButton b4 = ElevatedButton(onPressed:() {Navigator.pushNamed(context,"/s4");}, child: const Text("Go to Screen-4"));

    SizedBox gap = const SizedBox(width:20,height:20);

    Column cl = Column(mainAxisAlignment: MainAxisAlignment.center,children: [b1,gap,b3,gap,b4]);
    Center cn = Center(child:cl);
    AppBar ab = AppBar(title:const Text("Screen-2"));
    Scaffold sf = Scaffold(appBar:ab,body:cn);

    return sf;
  }// End of build()
}// End of Screen2 class


class Screen3 extends StatelessWidget
{
  const Screen3({super.key});

  @override
  Widget build(BuildContext context)
  {
    ElevatedButton b1 = ElevatedButton(onPressed:() { Navigator.pushNamed(context,"/s1"); }, child: const Text("Go to Screen-1"));
    ElevatedButton b2 = ElevatedButton(onPressed:() { Navigator.pushNamed(context,"/s2"); }, child: const Text("Go to Screen-2"));
    ElevatedButton b4 = ElevatedButton(onPressed:() {Navigator.pushNamed(context,"/s4");}, child: const Text("Go to Screen-4"));

    SizedBox gap = const SizedBox(width:20,height:20);

    Column cl = Column(mainAxisAlignment: MainAxisAlignment.center,children: [b1,gap,b2,gap,b4]);
    Center cn = Center(child:cl);
    AppBar ab = AppBar(title:const Text("Screen-3"));
    Scaffold sf = Scaffold(appBar:ab,body:cn);
    return sf;
  }// End of build()
} // End of Screen3 class

class Screen4 extends StatelessWidget
{
  const Screen4({super.key});

  @override
  Widget build(BuildContext context)
  {
    ElevatedButton b1 = ElevatedButton(onPressed:() { Navigator.pushNamed(context,"/s1"); }, child: const Text("Go to Screen-1"));
    ElevatedButton b2 = ElevatedButton(onPressed:() { Navigator.pushNamed(context,"/s2"); }, child: const Text("Go to Screen-2"));
    ElevatedButton b3 = ElevatedButton(onPressed:() {Navigator.pushNamed(context,"/s3");}, child: const Text("Go to Screen-3"));

    SizedBox gap = const SizedBox(width:20,height:20);

    Column cl = Column(mainAxisAlignment: MainAxisAlignment.center,children: [b1,gap,b2,gap,b3]);
    Center cn = Center(child:cl);
    AppBar ab = AppBar(title:const Text("Screen-4"));
    Scaffold sf = Scaffold(appBar:ab,body:cn);
    return sf;
  }// End of build()
} // End of Screen3 cl