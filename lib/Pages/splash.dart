import 'package:auto_play/Pages/login.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 248),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Group_6.png",
              height: 130,
            ),
            const SizedBox(
              height: 30,
            ),
            //if(Platform.isIOS)
            //const CupertinoActivityIndicator(
            //radius: 15,
            // )
            // else
            const CircularProgressIndicator(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
