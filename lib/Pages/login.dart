import 'package:auto_play/Pages/register.dart';
import 'package:auto_play/Pages/signin.dart';


import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {


  //Initialize firebase

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(255, 247, 250, 251), Colors.blue],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 230, top: 20),
                  child: Image.asset(
                    'assets/Group_6.png',
                    height: 130,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Text(
                        'Let the',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'Rhythem',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 130),
                  child: Row(
                    children: [
                      Text(
                        'Dive you',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'With Nature',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                const Text(
                  'AutoBeats is High quality solution for',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
               SizedBox(height: 100),
MaterialButton(
  minWidth: 250, // Set the desired minimum width
  height: 60,
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninPage()));
  },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(50)
              ),
              child: const Text("Sign In", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),),
            ),
            const SizedBox(height: 20),
MaterialButton(
  minWidth: 250, // Set the desired minimum width
  height: 60,
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
  },
              color:  const Color.fromARGB(255, 4, 21, 35),

              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color:  Color.fromARGB(255, 4, 21, 35),
                ),
                borderRadius: BorderRadius.circular(50)
              ),
              child: const Text("Signup", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ),


          ],
        ),
              ]
            )
                
              
          
    ),
    );
    
          
  }
}
