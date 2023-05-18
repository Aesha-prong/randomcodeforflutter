import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// MaterialApp+Scaffold
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'ElevatedButton Demo';

  @override
  Widget build(BuildContext context)
  {
    print("build() of MaterialApp called...");
    Scaffold s = Scaffold(appBar: AppBar(title: const Text(_title)),body: const MyStatefulWidget());
    MaterialApp m = MaterialApp( title: _title,home: s);
    return m;
  }
}

//Container
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context)
  {
    print("build() of MyStatefulWidgetState called...");
    final ButtonStyle style =  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    ElevatedButton b1 = ElevatedButton(style: style,onPressed: null,child: const Text('Disabled'));
    ElevatedButton b2 = ElevatedButton(style: style,onPressed: (){},child: const Text('Enabled'));
    Column c = Column(mainAxisSize: MainAxisSize.min,children: <Widget>[b1,const SizedBox(height: 30), b2]);

    return Center(child: c);
  }
}

