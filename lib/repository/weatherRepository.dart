//.import 'package:dio/dio.dart';

/*class WeatherRepository {
  Duration duration = Duration(seconds: 60);

  Future<Response> getCurrentWeatherRepository() async {
    Response response = await Dio()
        .get(
            "https://api.openweathermap.org/data/2.5/weather?APPID=705a38d095c9e617bbe3fa0352b79af6&lon=90.4074&lat=23.7104")
        .timeout(duration);
    return response;
  }
}*/
import 'package:weather/constant/constant.dart';

import 'package:http/http.dart';

class WeatherRepository {
  Duration timeOutDuration = Duration(seconds: 60);

  Future<Response> getCurrentWeatherRepository(
      {double? lat, double? lon}) async {
    Response response = await Client()
        .get(Uri.parse(
            "${ApiConstant.baseUrl}?lat=$lat&units=${ApiConstant.units}&lon=$lon&APPID=${ApiConstant.appId}"))
        .timeout(timeOutDuration);
    return response;
  }

  Future<Response> getCurrentWeatherRepositoryByCity({String? cityName}) async {
    Response response = await Client()
        .get(Uri.parse(
            "${ApiConstant.baseUrl}?q=$cityName&units=${ApiConstant.units}&APPID=${ApiConstant.appId}"))
        .timeout(timeOutDuration);
    return response;
  }
}
