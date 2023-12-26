import 'package:auto_play/Pages/view_profile.dart';
import 'package:flutter/material.dart';



class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Builder(builder: (context) {
          return Container(
            height: 1000,
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
                          Navigator.pop(context, const ViewProfile());
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                    ClipOval(
                      child: Stack(
                        children: [
                          Image.asset('assets/Ellipse 14.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 75, top: 70),
                            child: Container(
                              width: 32,
                              height: 32,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.add_a_photo),
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                      child: Container(
                        height: 400.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 5, 136, 244),
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: TextFormField(
                                  controller: _nameController,
                                  decoration: const InputDecoration(
                                    labelText: 'Name',
                                    labelStyle: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    hintText: 'my name',
                                    hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black),
                                    suffixIcon: Icon(Icons.edit),
                                    suffixIconColor: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    hintText: 'my email',
                                    hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black),
                                    suffixIcon: Icon(Icons.edit),
                                    suffixIconColor: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: TextFormField(
                                  controller: _descriptionController,
                                  decoration: const InputDecoration(
                                    labelText: 'Description',
                                    labelStyle: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    hintText: 'add a description',
                                    hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black),
                                    suffixIcon: Icon(Icons.edit),
                                    suffixIconColor: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.error),
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, right: 50),
                            child: Text(
                              'Changes made to your name and profile picture are\nvisible only on Autobeats',
                              style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
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
          );
        }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 92, 174, 240),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
              iconSize: 40,
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              iconSize: 40,
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.restart_alt),
              iconSize: 40,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
