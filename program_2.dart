/*Create a Flutter application with three radiobuttons to show following options:
- Show Current Date and Time
- Show Current Location of the device
- Go to next screen.
After these three radiobuttons, a button (“Do as directed”) should be there. Clicking on the
button after selecting first or second option, the output should be displayed within the same
screen. Clicking on the button after selecting third option, another screen with should be
displayed.*/

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    home: Progarm_2(),
  ));
}

class Progarm_2 extends StatefulWidget {
  const Progarm_2({Key? key}) : super(key: key);

  @override
  State<Progarm_2> createState() => _Progarm_2State();
}

class _Progarm_2State extends State<Progarm_2> {
  String? _dateTime = "";
  String? _location = "";
  int _selectedOption = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedOption = value!;
    });
  }

  void _doAsDirected() async {
    if (_selectedOption == 0) {
      // Show current date and time
      setState(() {
        _dateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
        _location = "";
      });
    } else if (_selectedOption == 1) {
      // Show current location of the device
      try {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        setState(() {
          _location =
              "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
          _dateTime = "";
        });
      } catch (e) {
        setState(() {
          _location = "Error: ${e.toString()}";
          _dateTime = "";
        });
      }
    } else {
      // Go to next screen
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NextScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Program 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please select an option:',
          ),
          RadioListTile(
            title: Text("Show Current Date and Time"),
            value: 0,
            groupValue: _selectedOption,
            onChanged: _handleRadioValueChange,
          ),
          RadioListTile(
            title: Text("Show Current Location of the device"),
            value: 1,
            groupValue: _selectedOption,
            onChanged: _handleRadioValueChange,
          ),
          RadioListTile(
            title: Text("Go to next screen"),
            value: 2,
            groupValue: _selectedOption,
            onChanged: _handleRadioValueChange,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _doAsDirected,
            child: Text('Do as directed'),
          ),
          SizedBox(height: 20.0),
          Text(_dateTime ?? _location ?? ""),
        ],
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Next Screen"),
        ),
        body: Center(
          child: Text("This is the next screen."),
        ),
      ),
    );
  }
}
