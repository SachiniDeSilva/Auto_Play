import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
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
  