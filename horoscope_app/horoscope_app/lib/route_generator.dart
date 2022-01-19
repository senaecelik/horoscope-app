import 'package:flutter/material.dart';

import 'burc_detail.dart';
import 'burc_listesi.dart';
import 'model/horoscope.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HoroscopeList());

      case '/burcDetay':
        final horoscope = settings.arguments as Horoscope;
        return MaterialPageRoute(
            builder: (context) => HoroscopeDetail(horoscope: horoscope));
    }
  }
}
