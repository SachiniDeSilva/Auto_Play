import 'package:auto_play/Pages/register.dart';
import 'package:auto_play/Pages/signin.dart';


import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _Verify();
}

class _Verify extends State<Verify> {


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
                    height: 70,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                
                const SizedBox(
                  height: 20,
                ),
                
                const SizedBox(
                  height: 75,
                ),
                
               SizedBox(height: 100),
MaterialButton(
  minWidth: 250, // Set the desired minimum width
  height: 60,
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninPage()));
  },
              color:  const Color.fromARGB(255, 4, 21, 35),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: const Color.fromARGB(255, 4, 21, 35),
                ),
                borderRadius: BorderRadius.circular(50)
              ),
              child: const Text("Sign In", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),),
            ),
            const SizedBox(height: 20),



          ],
        ),
              ]
            )
                
              
          
    ),
    );
    
          
  }
}


