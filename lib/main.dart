// import 'package:auto_play/Pages/Splash.dart';
// import 'package:flutter/material.dart';
// import 'package:auto_play/Routes/route_manager.dart';
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {

//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'flutter Demo',
//       onGenerateRoute: RouteManager.onGenerateRoute,
//       initialRoute: RouteManager.splash,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Splash(),
//     );
//   }
// }

import 'package:auto_play_project/Pages/home.dart';
import 'package:flutter/material.dart';

import 'Routes/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Play App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteManager.onGenerateRoute,
      initialRoute: RouteManager.splash,
    );
  }
}
