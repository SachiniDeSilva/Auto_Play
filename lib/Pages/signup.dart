import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(255, 149, 197, 208), Colors.blue],
                ),
              ),
            ),
             Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 230, top: 20),
                  child: Image.asset(
                    'assets/Group_6.png',
                    height: 130,
                  ),
                ),
              ],
             ),
      
          ],
      )

    );
  }
}
  