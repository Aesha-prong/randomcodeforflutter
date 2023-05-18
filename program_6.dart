/*Create a flutter application in which the at least five records are fetched from an online
resource with the help of http. Display these records using a ListView*/

import 'package:flutter/material.dart';
import 'package:program_1/record_list_for_program6.dart';

void main() {
  runApp(const MaterialApp(
    home: Program_6(),
  ));
}

class Program_6 extends StatefulWidget {
  const Program_6({Key? key}) : super(key: key);

  @override
  State<Program_6> createState() => _Program_6State();
}

class _Program_6State extends State<Program_6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Program 6"),
      ),
      body: RecordList(),
    );
  }
}
