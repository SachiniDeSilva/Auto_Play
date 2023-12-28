import 'package:auto_play/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 205, 203, 203),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset('assets/Group_6.png'),
                  height: 130,
                ),
                Container(
                  child: Image.asset('assets/Ellipse 14.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, bottom: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 4, 21, 35),
                    fixedSize: Size(200, 60)),
                onPressed: () {},
                child: Text(
                  'Time',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 4, 21, 35),
                  fixedSize: Size(200, 60)),
              onPressed: () {},
              child: Text(
                'Weather',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
