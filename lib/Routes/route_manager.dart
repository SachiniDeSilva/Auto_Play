
import 'package:flutter/material.dart';

import 'package:auto_play/Pages/splash.dart';


class RouteManager{
  static const String splash = '/';

  static Route<dynamic>? onGenerateRoute(RouteSettings setting){
    switch(setting.name){

      //route for splash
      case splash:
      return MaterialPageRoute(
        builder: (context)=> const Splash());

      //route for login
    }
    return null;
  }
}