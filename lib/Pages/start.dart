import 'package:flutter/material.dart';

class Start extends StatefulWidget{
  const Start({Key? key}):super(key: key);

   @override
  State<Start> createState() => _StartState();
}
class _StartState extends State<Start>{
   @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 51, 94, 157),
      title: const Text("Start"),),
    );

  }
}
  
 
