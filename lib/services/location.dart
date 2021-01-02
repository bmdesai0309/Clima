import 'package:geolocator/geolocator.dart';

class Location {

  double latitude;
  double longitude;

  Future<void> getCurruntLocation() async {
    try {
      //LocationPermission permission = await Geolocator.checkPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
          //timeLimit: Duration(seconds: 20));
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

}