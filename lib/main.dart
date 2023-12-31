import 'package:flutter/material.dart';

import 'Routes/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto Play App',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      onGenerateRoute: RouteManager.onGenerateRoute,
      initialRoute: RouteManager.splash,
    );
  }
}
