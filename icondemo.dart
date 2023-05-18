import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {

   // Icon i1 = const Icon(Icons.access_alarm,size:80,color:Colors.orangeAccent);
    //Icon i2 = const Icon(Icons.train,size:80,color:Colors.indigo);
    //Icon i3 = const Icon(Icons.car_crash,size:80,color:Colors.green);
    Image i4 = Image.asset("assets/download.png");
    Image i5 = Image.network('https://www.shareicon.net/data/128x128/2016/11/22/854956_search_512x512.png');

    Row r = Row(mainAxisAlignment:MainAxisAlignment.center,
        children:<Widget>[i4,i5]);
    Center c1 = Center(child:r);
    AppBar ab = AppBar(title:const Text('Icon Demo'));
    Scaffold sf = Scaffold(appBar:ab,body:c1);
    MaterialApp m = MaterialApp(home:sf,debugShowCheckedModeBanner:false);
    return m;
  }
}
