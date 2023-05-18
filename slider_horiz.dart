import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  double principal = 200000;
  String msg1= "200000";

  double roi = 6;
  String msg2= "6";

  double term = 8;
  String msg3= "8";

  double interest=0;

  @override
  Widget build(BuildContext context) {

    print("build() called...");


    Slider s1 = Slider(value:principal,min:100000,max:500000, activeColor:Colors.blue,
        onChanged: (double newValue) {
      setState(()
      {
        //principal = this.value;
        principal = newValue.round().toDouble();
        msg1 = principal.toString();
      }
      );});

    Text t1 = Text("principal = Rs. $msg1 ");
    Slider s2 = Slider(value:roi,min:5,max:10,activeColor:Colors.deepPurpleAccent,
        onChanged: (double newValue) {
      setState(()
      {
        roi = newValue;
        msg2 = roi.toStringAsFixed(2);
      }
      );});
    Text t2 = Text("Rate of interest = $msg2 %");

    Slider s3 = Slider(value:term,min:5,max:10, activeColor:Colors.pink,onChanged: (double newValue) {
      setState(()
      {
        term = newValue;
        msg3 = term.toStringAsFixed(2);
      }
      );});
    Text t3 = Text("Term in years = $msg3 ");
    interest = (principal*roi*term)/100;
    String interestString = interest.toStringAsFixed(2);
    Text t4 = Text("Interest = Rs. $interestString");

    Row r1 = Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children:[s1,t1]);

    Row r2 = Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children:[s2,t2]);

    Row r3 = Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children:[s3,t3]);

    Column cl = Column(children:[r1,r2,r3,t4]);

    Center cn = Center(child:cl);

    AppBar ab = AppBar(title:const Text("Simple Interest Calculator"));

    Scaffold sf = Scaffold(appBar:ab,body:cn);

    MaterialApp m =MaterialApp(home:sf);

    return m;
  }
}