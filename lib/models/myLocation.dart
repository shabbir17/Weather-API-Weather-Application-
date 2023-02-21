import 'package:geolocator/geolocator.dart';

class MyLocation{
  double? _lat;
  double? _lon;

Future getLocation()async{
  try {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    _lat= position.latitude;
    _lon= position.longitude;
  } catch (error) {
    print(error.toString());
  }
}

  double? get lat => _lat;

  double? get lon => _lon;
}

/*
double getLat(){
  return _lat!;
}*/
