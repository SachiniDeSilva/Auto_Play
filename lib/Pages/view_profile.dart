import 'package:auto_play/Pages/edit_profile.dart';
import 'package:auto_play/Pages/forget_pw_1.dart';
import 'package:auto_play/Pages/forget_pw_2.dart';
import 'package:auto_play/Pages/home.dart';
import 'package:auto_play/Pages/mydrawer.dart';
import 'package:flutter/material.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  bool isSwitched = false;
  bool isSwitched2 = false;
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
              padding: const EdgeInsets.only(top: 120.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 300.0),
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pop(context, const MyDrawer());
                      },
                      icon: const Icon(Icons.arrow_back),
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
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) {
                                    return EditProfile();
                                  },
                                ));
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(right: 160),
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
                          const Divider(
                            height: 8,
                            color: Color.fromARGB(152, 158, 158, 158),
                            thickness: 3,
                          ),
                          ListTile(
                            leading: Image.asset('assets/􀣋.png'),
                            title: TextButton(
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.only(right: 190),
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
                          const Divider(
                            height: 8,
                            color: Color.fromARGB(152, 158, 158, 158),
                            thickness: 3,
                          ),
                          ListTile(
                            leading: Image.asset('assets/↳Color.png'),
                            title: TextButton(
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.only(right: 70),
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
                            trailing: new Switch(
                              value: isSwitched,
                              activeColor: Color.fromARGB(255, 4, 21, 35),
                              activeTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  if (value == true) {}
                                });
                              },
                            ),
                          ),
                          const Divider(
                            height: 8,
                            color: Color.fromARGB(152, 158, 158, 158),
                            thickness: 3,
                          ),
                          ListTile(
                            title: TextButton(
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.only(right: 60),
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
                            trailing: new Switch(
                              value: isSwitched2,
                              activeColor: Color.fromARGB(255, 4, 21, 35),
                              activeTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched2 = value;
                                  if (value == true) {}
                                });
                              },
                            ),
                            subtitle: const Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text(
                                'Keep everything to me',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          const Divider(
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
