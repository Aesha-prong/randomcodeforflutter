import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context)
  {
      Image i1 = Image.asset("assets/i1.GIF");
      Image i2 = Image.asset("assets/i2.PNG");
      Image i3 = Image.asset("assets/i3.PNG");
      Image i4 = Image.network("https://cdn.onlinewebfonts.com/svg/download_275971.png",scale:5) ;

      Row r = Row(mainAxisAlignment:MainAxisAlignment.center,children: [i1,i2,i3,i4]);

      Center c = Center(child:r);
      AppBar ab = AppBar(title:const Text('Image Demo'));
      Scaffold sf = Scaffold(appBar:ab,body:c);
      MaterialApp m =MaterialApp(home:sf,debugShowCheckedModeBanner:false);

      return m;



  }
}
