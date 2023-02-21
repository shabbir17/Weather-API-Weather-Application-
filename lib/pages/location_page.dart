import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 import 'package:weather/models/api/myWeather.dart';
 import 'package:weather/pages/cityPage.dart';

import '../provider/weather_provider.dart';

class LocationPage extends StatefulWidget {
  final MyWeather? weather;

  LocationPage({Key? key, this.weather}) : super(key: key);

  @override
  State<LocationPage> createState() {
    return _LocationPageState();
  }
}

class _LocationPageState extends State<LocationPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WeatherProvider wProvider=Provider.of<WeatherProvider>(context,listen:false );
    wProvider.isLoading=true;
    wProvider.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (_, weatherProvider, ___) {
      return Scaffold(
        body: weatherProvider.isLoading == false
            ? Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/location_background.jpg"),
                        fit: BoxFit.cover)),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {

                              weatherProvider.isLoading=true;
                              weatherProvider.getCurrentLocation();
                            },
                            child: Icon(
                              Icons.near_me,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                              onPressed: () async {
                                String cityName = await Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return CityPage();
                                }));

                                if (cityName != null) {
                                  weatherProvider.isLoading=true;
                                  //fetchCurrentWeatherByCity(cityName: cityName);
                                }
                              },
                              child: Icon(
                                Icons.location_city,
                                size: 50,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              weatherProvider.myWeather.main!.temp != null
                                  ? weatherProvider.myWeather.main!.temp.toString()
                                  : " ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 90,
                                  fontWeight: FontWeight.bold),
                            ),
                            Image.network(
                              weatherProvider.myWeather.weather!.first.icon != null
                                  ? "http://openweathermap.org/img/wn/${weatherProvider.myWeather.weather!.first.icon}.png"
                                  : " ",
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Description:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            weatherProvider.myWeather.weather!.first.description ?? " ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "CityName:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            weatherProvider.myWeather.name.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              )
            : Center(child: CircularProgressIndicator()),
      );
    });
  }
}
