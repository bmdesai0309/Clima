import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = new Location();
    await location.getCurruntLocation();
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
