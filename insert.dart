import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

     TextEditingController tec1 =  TextEditingController();
     TextField tf1 =  TextField(controller:tec1,decoration:  InputDecoration(border:OutlineInputBorder(),labelText:'Student Name') );

     ElevatedButton b1 = ElevatedButton(onPressed: ()
     async {
     final String name = tec1.text;

            var doc = FirebaseFirestore.instance.collection('students').doc('1');
            final json = {
              'student_name': name
            };
            await doc.set(json);

       }


   , child: const Text("Add"));


     Column cl1 =  Column(mainAxisSize:MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.center,children: [tf1,b1]);

    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: cl1
        ),
      ),
    );
  }
}
