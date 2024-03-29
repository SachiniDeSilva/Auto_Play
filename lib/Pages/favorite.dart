import 'package:auto_play/Pages/home.dart';
import 'package:auto_play/Pages/mydrawer.dart';
import 'package:auto_play/Pages/upload.dart';
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
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
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
                                    Navigator.pop(context, const MyDrawer());
                                  },
                                  icon: const Icon(Icons.arrow_back),
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
                                  icon: const Icon(Icons.search),
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
                              const Padding(
                                padding:
                                    EdgeInsets.only(right: 285, top: 30),
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
                                    color: const Color.fromARGB(117, 158, 158, 158),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListTile(
                                    title: const Text(
                                      'Melody',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 32,
                                        ),
                                        Image.asset('assets/􀟲.png'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 32,
                                      ),
                                      Image.asset('assets/􀟲.png'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                color: const Color.fromARGB(117, 158, 158, 158),
                                child: ListTile(
                                  title: const Text(
                                    'Melody',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
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
                      
                     ),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Upload()));
                    },
                    child: const Icon(Icons.add, color: Colors.black,),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
