import 'package:auto_play/Pages/register.dart';
import 'package:auto_play/Pages/signup.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                  colors: [Color.fromARGB(255, 149, 197, 208), Colors.blue],
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
                SizedBox(height: 70,),
                 Column(
          children: <Widget>[
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupPage()));
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Text("Login", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ),
            SizedBox(height: 20,),
             MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Register()));
              },
              color:  Color.fromARGB(255, 13, 4, 35),

              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color:  const Color.fromARGB(255, 4, 21, 35),
                ),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Text("Signup", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ),


          ],
        ),
        

              ],
            ),
          ],
        ),
      ),
    );
  }
}
