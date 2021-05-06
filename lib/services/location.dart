import 'package:geolocator/geolocator.dart';

class Location {
  double longitude = -0.12765421423189643;
  double latitude = 51.50736983429878;

  Future getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}
