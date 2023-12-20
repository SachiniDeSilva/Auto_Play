import 'package:flutter/material.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({super.key});

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(182, 255, 255, 255),
    );
  }
}
