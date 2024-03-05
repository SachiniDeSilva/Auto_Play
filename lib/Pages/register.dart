
import 'package:auto_play/Pages/privacy_&_policy.dart';

import 'package:auto_play/Pages/term_to_use.dart';
import 'package:auto_play/userAuth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:auto_play/firebase_options.dart';





class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    TextEditingController _emailController = TextEditingController();
      TextEditingController _passwordController = TextEditingController();

      //late String _email ;
      //late String _password ;
void _handleSignUp() async{
  try{
    UserCredential userCredential =
    await _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
    print("User registered: ${userCredential.user!.email}");


  }catch(e){
    print("Error during Registration:$e");
  }

}
  @override
  void dispose(){

    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  bool isRememberMe = false;

  Widget buildEmail(
  
  ) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    
      const Text(
        "Email",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            const BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ],
        ),
        height: 60,
        child: TextField(
          controller: _emailController,
         keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.blue,
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      )
    ],
  );
}
Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        "Password",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            const BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ],
        ),
        height: 60,
        child: TextField(
        controller: _passwordController,
         obscureText: true,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.blue,
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      )
    ],
  );
}

Widget buildconfirmPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        "Confirm Password",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            const BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ],
        ),
        height: 60,
        child: const TextField(
         obscureText: true,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.blue,
              ),
              hintText: ' Confirm Password',
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      )
    ],
  );
}


Widget buildVerifyBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _handleSignUp, 
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          primary: const Color.fromARGB(255, 4, 21, 35),
           minimumSize: Size(300, 20),
        ),
        child: const Text(
          "VERIFY",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildTerms(){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const TermUse()));
      } ,
      child: RichText(text: const TextSpan(
        children: [
          TextSpan(
            text: 'By signing up, you agree to ',
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )
          ),
          TextSpan(
             
            text: ' Terms Of Use ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )
          ),
         
        ]
      )),

    );
  }
  Widget buildPrivacy(){
    return GestureDetector(
      onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context)=> const PrivacyPolicy()));



      } ,
      child: RichText(text: const TextSpan(
        children: [
          TextSpan(
            text: 'Or  ',
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )
          ),
          TextSpan(
             
            text: 'Privacy Policy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )
          ),
         
        ]
      )),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.blue,
                ],
              ),
            ),
          ),
        
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/Group_6.png', // Replace with the actual image path
                  height: 100,
                ),
                const SizedBox(
                  height: 20, // Adjust the space between logo and "Sign In" text
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildEmail()
                ,
                const SizedBox(height: 20,),
                buildPassword(),
                const SizedBox(height: 20,),
                buildconfirmPassword(),
                
                buildVerifyBtn(),
                
                 const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        '------- or -------',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.facebook),
                            iconSize: 30,
                            color: Colors.black,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/flat-color-icons_google.png',
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.apple),
                            iconSize: 30,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                buildTerms(),
                buildPrivacy(),
              ],
            ),
          ),
        ],
      ),
    );
  }
  }
