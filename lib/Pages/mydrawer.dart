import 'package:auto_play_project/Pages/home.dart';
import 'package:auto_play_project/Pages/view_profile.dart';
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
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, right: 210.0),
                child: IconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context, Home());
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              ClipOval(
                child: Image.asset(
                  'assets/Ellipse 14.png',
                  width: 100.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Text(
                    'User Name',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return ViewProfile();
                      }));
                    },
                    child: Text('View Profile'),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(160),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Color.fromARGB(255, 4, 34, 59),
                        textStyle: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 150.0),
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(right: 120.0),
                              child: Text(
                                'Favorite',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 50.0),
                              child: Text(
                                'Privacy & Policy',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(right: 82.0),
                              child: Text(
                                'Term to Use',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(right: 60.0),
                              child: Text(
                                'Check Update',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
