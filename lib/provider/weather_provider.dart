import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:weather/models/api/myWeather.dart';
import 'package:weather/repository/weatherRepository.dart';

import '../models/myLocation.dart';

class WeatherProvider with ChangeNotifier {
  MyWeather? _myWeather;
  bool? _isLoading;



  void getCurrentLocation() async {
    MyLocation location = MyLocation();
    await location.getLocation();

    getCurrentWeatherCtl(location.lat!, location.lon!);
  }
  Future<void> getCurrentWeatherCtl(double? lat, double? lon) async {
    try {
      Response response = await WeatherRepository().getCurrentWeatherRepository(
          lat: lat, lon: lon);
      print(response);
      if (response.statusCode == 200) {
        myWeather= MyWeather.fromJson(jsonDecode(response.body));
        isLoading= false;
        notifyListeners();

      }
    } catch (error) {
      print(error.toString());
    }

  }

  MyWeather get myWeather => _myWeather!;

  set myWeather(MyWeather value) {
    _myWeather = value;
    notifyListeners();
  }

  bool get isLoading => _isLoading!;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

/*  Future<MyWeather> getCurrentWeatherCtlByCity({String? cityName}) async {
    try {
      Response response = await weatherRepository
          .getCurrentWeatherRepositoryByCity(cityName: cityName);
      print(response);
      if (response.statusCode == 200) {
        return MyWeather.fromJson(jsonDecode(response.body));
      } else {
        return MyWeather();
      }
    } catch (error) {
      print(error.toString());
    }
    return MyWeather();
  }*/

}
