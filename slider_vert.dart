import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});
  @override
  AppState createState() => AppState();
}

class AppState extends State<App>
{

  double v = 5;

  @override
  Widget build(BuildContext context) {

    Slider slider = Slider(label: '$v',value:v,min:0,max:10,divisions:10,onChanged:(double newValue)
    {
      setState(() {
        v = newValue;
        print('Current slider value = $v');
      });
    }
    );
    RotatedBox rb = RotatedBox(quarterTurns: -1,child:slider);

    Center ct = Center(child:rb);

    AppBar ab = AppBar(title: const Text('Vertical slider using RotatedBox'));

    Scaffold sf = Scaffold(appBar:ab,body:ct);
    MaterialApp m= MaterialApp(home:sf);

    return m;
  }
}
