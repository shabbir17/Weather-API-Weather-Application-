import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/pages/loading_page.dart';
import 'package:weather/pages/location_page.dart';
import 'package:weather/provider/weather_provider.dart';
import 'package:weather/test_page/page1.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<WeatherProvider>(
          create: (context) => WeatherProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LocationPage(),
    );
  }
}
