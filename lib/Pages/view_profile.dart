import 'package:auto_play_project/Pages/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.blue],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 300.0),
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pop(context, mydrawer());
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
                    padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
                    child: Container(
                      height: 400.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Image.asset('assets/􀉩.png'),
                            title: TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 160),
                                child: Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 8,
                            color: Color.fromARGB(152, 158, 158, 158),
                            thickness: 3,
                          ),
                          ListTile(
                            leading: Image.asset('assets/􀣋.png'),
                            title: TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 190),
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 8,
                            color: Color.fromARGB(152, 158, 158, 158),
                            thickness: 3,
                          ),
                          ListTile(
                            leading: Image.asset('assets/↳Color.png'),
                            title: TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 145),
                                child: Text(
                                  'Notifications',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 8,
                            color: Color.fromARGB(152, 158, 158, 158),
                            thickness: 3,
                          ),
                          ListTile(
                            title: TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 130),
                                child: Text(
                                  'Privacy',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Text(
                                'Keep everything to me',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          Divider(
                            height: 8,
                            color: Color.fromARGB(152, 158, 158, 158),
                            thickness: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
