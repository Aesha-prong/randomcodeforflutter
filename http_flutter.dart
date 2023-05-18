import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter HTTP request',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Uri url = Uri.parse("https://randomuser.me/api/?results=10");

  late List data;
  bool _isDataLoading = true;

  Future<List> _getUsers() async
  {
    var response = await http.get(url,headers: {"Accept": "application/json"});

    setState(() {

      var listData = json.decode(response.body);
      data = listData['results'];

      _isDataLoading = false;
    });
    return data;
  }

  @override
  void initState() {
    super.initState();

    _getUsers();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Http Request'),
        ),
        body: _isDataLoading
            ? Center(
            child: CircularProgressIndicator()
        )
            : ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, index){
              return ListTile(
                title: Text(data[index]['name']['first']+" "+data[index]['name']['last']),
                subtitle: Text(data[index]['email']),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]['picture']['thumbnail']),

                ),

              );
            }
        )
    );
  }
}