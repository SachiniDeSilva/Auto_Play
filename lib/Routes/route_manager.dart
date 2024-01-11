import 'package:flutter/material.dart';

import '../Pages/home.dart';
import '../Pages/splash.dart';
import 'package:auto_play/Pages/start.dart';

class RouteManager {
  static const String splash = '/';
  static const String home = '/home';
  static const String start = '/start';

  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      //route for splash
      case splash:
        return MaterialPageRoute(builder: (context) => const Splash());

      //route for home
      case home:
        return MaterialPageRoute(builder: (context) => const Home());

        //route for start
      case start:
        return MaterialPageRoute(builder: (context) => const Start());

    }
    return null;
  }
}
