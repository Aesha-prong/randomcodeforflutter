import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

void main()async  => runApp(  MainApp());

class MainApp extends StatelessWidget
{
     MainApp({super.key});
     late final  String latitude, longitude;
     late final String address;
     _getLocation() async
     {
       Position position = await
       Geolocator.getCurrentPosition(desiredAccuracy:
       LocationAccuracy.high);
       latitude = position.latitude.toString();
       //latitude = "120";
       longitude = position.longitude.toString();
       debugPrint('location: ${position.latitude}');
       List<Placemark> addresses = await
       placemarkFromCoordinates(position.latitude,position.longitude);

       var first = addresses.first;
       //address  = ${first.name};
       debugPrint("${first.name} : ${first..administrativeArea}");
     }
    @override
  Widget build(BuildContext context)
    {

      _getLocation();
    debugPrint("latitude = $latitude");
    debugPrint("longitude = $longitude");
    Text t1 = Text(latitude);
    Text t2 = Text(longitude);
    Text t3 = Text("-");

    Column cl =  Column(mainAxisSize:MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.center,children: [t1,t2,t3]);
    Center ct = Center(child:cl);

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child:ct
        ),
      ),
    );



  }
}


