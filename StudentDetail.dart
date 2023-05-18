import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  List<String> ch=[];
  // DateTime? _selectedDate;
  //
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: _selectedDate ?? DateTime.now(),
  //     firstDate: DateTime(2001),
  //     lastDate: DateTime.now(),
  //   );
  //   if (picked != null && picked != _selectedDate) {
  //     setState(() {
  //       _selectedDate = picked;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text('Set 3'),centerTitle: true,),
            body: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: t1,
                        decoration: InputDecoration(hintText: 'Student Id',border: OutlineInputBorder()),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Select Birth-Date:',
                      style: TextStyle(fontSize: 20),
                    ),
                    // const SizedBox(height: 10),
                    // Text(
                    //   DateFormat('dd/MM/yyyy').format(_selectedDate!),
                    //
                    //   style:
                    //   const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    // ),

                    CheckboxListTile(
                        value: ch.contains('Flutter'),
                        title: Text('Flutter'),
                        activeColor: Colors.purpleAccent,
                        controlAffinity: ListTileControlAffinity.leading,

                        onChanged: (value){
                          setState(() {
                            if(value!){
                              ch.add('Flutter');
                            }
                            else{
                              ch.remove('Flutter');
                            }
                          });
                        }
                    ),
                    CheckboxListTile(
                        value: ch.contains('Java'),
                        title: Text('Java'),
                        activeColor: Colors.purpleAccent,
                        controlAffinity: ListTileControlAffinity.leading,

                        onChanged: (value){
                          setState(() {
                            if(value!){
                              ch.add('Java');
                            }
                            else{
                              ch.remove('Java');
                            }
                          });
                        }
                    ),
                    CheckboxListTile(
                        value: ch.contains('.NET'),
                        title: Text('.NET'),
                        activeColor: Colors.purpleAccent,
                        controlAffinity: ListTileControlAffinity.leading,

                        onChanged: (value){
                          setState(() {
                            if(value!){
                              ch.add('.NET');
                            }
                            else{
                              ch.remove('.NET');
                            }
                          });
                        }
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String studentId = t1.text;
                          String skills =
                              'Skill 1: $ch';
                          String displayText =
                              'Student ID: $studentId\nSkills: $skills';
                          t2.text = displayText;
                        },

                        child: Text('Show')),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Skils: $ch \n Student Id:',),
                    ),
                    TextField(
                      controller: t2,
                      readOnly: true,
                      maxLines: null,
                      decoration: InputDecoration(
                        labelText: 'Display',
                        border: OutlineInputBorder(),
                      ),
                    )],
                ),


                )));
    }
}