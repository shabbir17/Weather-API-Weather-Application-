/*
import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather/models/api/myWeather.dart';
import 'package:weather/repository/weatherRepository.dart';

class WeatherController {
  final WeatherRepository weatherRepository = WeatherRepository();

  Future<MyWeather> getCurrentWeatherCtl({double? lat, double? lon}) async {
    try {
      Response response = await weatherRepository.getCurrentWeatherRepository(
          lat: lat, lon: lon);
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
  }

  Future<MyWeather> getCurrentWeatherCtlByCity({String? cityName}) async {
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
  }
}
*/
