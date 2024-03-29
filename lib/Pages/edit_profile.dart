import 'package:auto_play/Pages/home.dart';
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
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.blue],
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context, const ViewProfile());
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ClipOval(
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/Ellipse 14.png',
                            // Adjust height as needed
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 75, top: 70),
                            child: SizedBox(
                              width: 32,
                              height: 32,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.blue,
                                child: const Icon(Icons.add_a_photo),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                  hintText: 'my name',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: const Icon(Icons.edit),
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                  hintText: 'my email',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: const Icon(Icons.edit),
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                  hintText: 'add a description',
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: const Icon(Icons.edit),
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
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.error),
                            color: Colors.black,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16, right: 50),
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
        ),
      ),
    );
  }
}