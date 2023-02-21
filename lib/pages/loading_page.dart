/*
import 'package:flutter/material.dart';
import 'package:weather/models/api/myWeather.dart';
import 'package:weather/models/myLocation.dart';
import 'package:weather/pages/location_page.dart';
import '../controller/weatherController.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

String? mWeather;
bool? isLoading;

class _LoadingPageState extends State<LoadingPage> {
  double? mLat;
  double? mLon;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLoading = true;
    getCurrentLocation();
  }

  void fetchCurrentWeather(double lat, double lon) async {
    MyWeather WeatherData =
        await WeatherController().getCurrentWeatherCtl(lat: lat, lon: lon);
    setState(() {
      isLoading = false;
    });
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationPage(
        weather: WeatherData,
      );
    }));
  }

  void getCurrentLocation() async {
    MyLocation location = MyLocation();
    await location.getLocation();

    fetchCurrentWeather(location.lat!, location.lon!);
  }

  */
/* String margin="abc";
  double? mMargin;*//*

  @override
  Widget build(BuildContext context) {
    */
/* try{mMargin=double.parse(margin);}
    catch(error){
      print(error.toString());
      mMargin=10.0;
    }*//*

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
              child: isLoading == false
                  ? Text(
                      "",
                      style: const TextStyle(fontSize: 60),
                    )
                  : CircularProgressIndicator()),
        ),
      ),
    );
  }
}
*/
