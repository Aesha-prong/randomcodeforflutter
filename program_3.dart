/*Create a Flutter application in which:
- three images from local drive are displayed in a row and
- two images from Internet are displayed in a column.*/

import 'package:flutter/material.dart';

class Program_3 extends StatelessWidget {
  const Program_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Program 3"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset('assets/images/1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/2.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/3.jpg'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Image.network(
                'https://static.toiimg.com/thumb/msid-98290591,width-1280,resizemode-4/98290591.jpg'),
            SizedBox(height: 16),
            Image.network(
                'https://static.toiimg.com/thumb/msid-98290591,width-1280,resizemode-4/98290591.jpg'),
          ],
        ),
      ),
    );
  }
}
