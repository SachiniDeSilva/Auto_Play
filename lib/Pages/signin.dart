import 'package:auto_play/Pages/forget_pw_1.dart';
import 'package:auto_play/Pages/forget_pw_2.dart';
import 'package:auto_play/Pages/forget_pw_3.dart';
import 'package:auto_play/Pages/loadingPage.dart';
import 'package:auto_play/Pages/register.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}


class _SigninPageState extends State<SigninPage> {
  bool isRememberMe = false;

  Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        "Email",
        style: TextStyle(
          color: Color.fromARGB(255, 222, 220, 220),
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
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      )
    ],
  );
}
Widget buildforgottenpw(){
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgetPw2()));
      },
      child: const Text("Forgot Password",
      style: TextStyle(
        color:  Color.fromARGB(255, 4, 21, 35),
        fontWeight: FontWeight.bold,
      ),)

    )

   

  );
}
Widget buildRemember(){
  return Container(
    height: 20,
    child: Row(
      children: <Widget>[
        Theme(data: ThemeData(
          unselectedWidgetColor: Colors.white
        ),child: Checkbox( 
          value: isRememberMe,
          checkColor: Colors.green,
          activeColor: Colors.white,
          onChanged:(value){
            setState(() {
              isRememberMe = value!;
            });
          } ,
        ),),
        const Text("Remember me",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),)
      ],
    ),
  );
}
Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Loading()));
  } ,
        style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          primary: const Color.fromARGB(255, 4, 21, 35),
           minimumSize: const Size(300, 20),
        ),
        child: const Text(
          "LOG IN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildSignupBtn(){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Register()));
      } ,
      child: RichText(text: const TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an Account?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
              color:  Color.fromARGB(255, 4, 21, 35),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )
          )
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
                  "Sign In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildEmail(),
                const SizedBox(height: 20,),
                buildPassword(),
                buildforgottenpw(),
                buildRemember(),
                buildLoginBtn(),
                 const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text('------- Or -------' ,
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
                buildSignupBtn(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
