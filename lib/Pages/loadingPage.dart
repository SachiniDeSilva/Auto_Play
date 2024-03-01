import 'package:auto_play/Pages/bottomNav.dart';

import 'package:auto_play/Pages/view_profile.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
   const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Stack( // Using Stack to position the profile photo
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/Group_6.png',
                  height: 130,
                ),
                SizedBox(height: 150),
                ElevatedButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNav()));
                  },
                  child: Text('Ready to start with AutoBeats',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    primary: const Color.fromARGB(255, 4, 21, 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.lightBlue, width: 2),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Positioned(
            
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewProfile()));

              },
            
            child: CircleAvatar(
              radius: 35,
             backgroundImage: AssetImage('assets/Ellipse 14.png'),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
