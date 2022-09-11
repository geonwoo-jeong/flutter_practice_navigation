import 'package:flutter/material.dart';
import 'package:navigation/screens/home_screen.dart';
import 'package:navigation/screens/route_one_screen.dart';
import 'package:navigation/screens/route_three_screen.dart';
import 'package:navigation/screens/route_two_screen.dart';

void main() {
  runApp(MaterialApp(
    // home: HomeScreen(),
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/one': (context) => RouteOneScreen(),
      '/two': (context) => RouteTwoScreen(),
      '/three': (context) => RouteThreeScreen(),
    },
  ));
}
