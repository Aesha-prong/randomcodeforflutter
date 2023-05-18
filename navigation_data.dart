import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigation',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.green,
    ),
    home: Screen1(),
  ));
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Click Here'),

          onPressed: () {

            String? lastname="Nanavati";
            String? firstname="Jay";

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2(lastname:lastname,firstname:firstname)),
            );
          },
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {

  final String lastname;
  final String firstname;


  const Screen2({super.key, required this.lastname,required this.firstname});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi, $firstname $lastname"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back'),
        ),
      ),
    );
  }
}