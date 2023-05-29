import 'package:flutter/material.dart';
import 'package:weather_app/landing/newlist.dart';

import 'landing/landing_page.dart';
import 'utils/my_constant.dart';

final Map<String, WidgetBuilder> mapRoute = {
  '/landingPage': (context) => const LandingPage(),
  '/newList': (context) => const NewList(),
};

void main(List<String> args) {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: mapRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: MyConstant.routeLanding,
    );
  }
}
