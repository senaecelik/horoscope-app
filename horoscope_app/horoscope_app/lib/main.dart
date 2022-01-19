import 'package:flutter/material.dart';
import 'package:horoscope_app/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.teal),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
