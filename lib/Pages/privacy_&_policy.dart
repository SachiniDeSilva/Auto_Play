import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'edit_profile.dart';
import 'home.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  bool isTicked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.blue],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 300.0),
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170, top: 20),
                    child: Text(
                      'Privacy & Policy',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 92, 174, 240),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context, Home());
              },
              icon: Icon(Icons.home),
              iconSize: 40,
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              iconSize: 40,
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.restart_alt),
              iconSize: 40,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
