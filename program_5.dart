/*Create a Flutter application in which three scrollbars are displayed. These scrollbars should
allow the user to select value for length, breadth and height of a box. Each scrollbar should
allow a value between 1 and 5 only. Further, provide one more button(“Show”). Clicking this
button should display volume of the box for current value of length, breadth and height.*/

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Program_5(),
    ),
  );
}

class Program_5 extends StatefulWidget {
  const Program_5({Key? key}) : super(key: key);

  @override
  State<Program_5> createState() => _Program_5State();
}

class _Program_5State extends State<Program_5> {
  double _length = 1.0;
  double _breadth = 1.0;
  double _height = 1.0;
  double _volume = 1.0;

  void _calculateVolume() {
    setState(() {
      _volume = _length * _breadth * _height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Program 5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Length',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Scrollbar(
              child: Slider(
                value: _length,
                min: 1.0,
                max: 5.0,
                divisions: 4,
                label: '$_length',
                onChanged: (value) {
                  setState(() {
                    _length = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Select Breadth',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Scrollbar(
              child: Slider(
                value: _breadth,
                min: 1.0,
                max: 5.0,
                divisions: 4,
                label: '$_breadth',
                onChanged: (value) {
                  setState(() {
                    _breadth = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Select Height',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Scrollbar(
              child: Slider(
                value: _height,
                min: 1.0,
                max: 5.0,
                divisions: 4,
                label: '$_height',
                onChanged: (value) {
                  setState(() {
                    _height = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _calculateVolume,
              child: Text('Show'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Volume: $_volume',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
