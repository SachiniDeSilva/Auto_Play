

import 'package:flutter/material.dart';

import 'package:auto_play/Pages/splash.dart';
import 'package:auto_play/Pages/home.dart';


class RouteManager{
  static const String splash = '/';
  static const String home = '/home';

  static Route<dynamic>? onGenerateRoute(RouteSettings setting){
    switch(setting.name){

      //route for splash
      case splash:
      return MaterialPageRoute(
        builder: (context)=> const Splash());

      //route for home
      case home:
      return MaterialPageRoute(
        builder: (context)=> const Home()
      );
    }
    return null;
  }
}