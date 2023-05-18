import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Required for DateFormat class

void main() {
  runApp(const MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    TextEditingController tec = TextEditingController();
    TextField tf = TextField(
        controller: tec, //editing controller of this TextField
        decoration: const InputDecoration(
            icon: Icon(Icons.calendar_today), //icon of text field
            labelText: "Select Date" //label text of field
        ),
        readOnly: true,  // when true user cannot edit text

        //--------------------------------------------------------
        onTap: () async {
          //when click we have to show the datepicker
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(), //get today's date
              firstDate:DateTime.now(), //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2025)
          );

          if(pickedDate != null )
          {
            debugPrint(pickedDate.toString());  //get the picked date in the format => 2022-07-04 00:00:00.00
              String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
            print(formattedDate); //formatted date output using intl package =>  2022-07-04

            tec.text = formattedDate; //set formatted date to TextField value.


            SnackBar snackBar = SnackBar(
              content:  Text(formattedDate),
              duration: const Duration(seconds:5),
              backgroundColor: Colors.black,
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);

          }else{
            debugPrint("Date is not selected");
          }



        }
    );

    Center ct = Center(child:tf);
    Scaffold sf = Scaffold(body:ct);


    return sf;
  }
}
