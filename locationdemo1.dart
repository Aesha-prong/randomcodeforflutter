import 'package:flutter/material.dart';
import 'package:location/location.dart' ;
import 'package:geocoding/geocoding.dart' show placemarkFromCoordinates,Placemark;

void main()async  => runApp( MainApp());

class MainApp extends StatelessWidget
{
      MainApp({super.key});

    late final  String latitude, longitude;

  Future<void> checkPermissions() async
  {
    Location location = Location() ;
    bool result = await location.serviceEnabled();
    if(result==false)
      {
        await location.requestService();
      }

    PermissionStatus permission = await location.hasPermission();
    if (permission == PermissionStatus.denied) {
      await location.requestPermission();
    }
    var currentLocation  = await location.getLocation();
      latitude = currentLocation.latitude.toString();
      longitude = currentLocation.longitude.toString();

    debugPrint("latitude = $latitude");
    debugPrint("longitude = $longitude");


      /*List<Placemark> addresses = await
      placemarkFromCoordinates(currentLocation.latitude, currentLocation.longitude);

      var first = addresses.first;
      //address  = ${first.name};
      debugPrint("${first.name} : ${first.administrativeArea}");

      */


  }


    @override
  Widget build(BuildContext context)
    {

    checkPermissions();
    debugPrint("latitude = $latitude");
    debugPrint("longitude = $longitude");
    Text t1 = Text(latitude);
    Text t2 = Text(longitude);

    Column cl =  Column(mainAxisSize:MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.center,children: [t1,t2]);
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


