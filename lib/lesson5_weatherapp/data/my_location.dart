import 'package:geolocator/geolocator.dart';

class MyLocation {
  double? latitude2;
  double? longitude2;

  Future<void> getMyCurrentLocation() async {
    try {
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      longitude2 = position.longitude;
      latitude2 = position.latitude;
    } catch (e) {
      print('There was a problem with the internet connection.');
    }
  }
}
