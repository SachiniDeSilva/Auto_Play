import 'package:auto_play/Pages/home.dart';
import 'package:auto_play/Pages/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/rendering/box.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.blue],
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context, MyDrawer());
                                },
                                icon: Icon(Icons.arrow_back),
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 200, top: 40),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.search),
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/Ellipse 14.png',
                              height: 75,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 285, top: 30),
                              child: Text(
                                'Favorite',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(117, 158, 158, 158),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: ListTile(
                                  title: Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Color.fromARGB(117, 158, 158, 158),
                              child: ListTile(
                                title: Text(
                                  'Melody',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Image.asset('assets/􀟲.png'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(30.0)),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
