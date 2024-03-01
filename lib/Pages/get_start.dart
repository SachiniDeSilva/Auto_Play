import 'package:auto_play/Pages/favorite.dart';
import 'package:auto_play/Pages/home.dart';
import 'package:auto_play/Pages/time.dart';
import 'package:auto_play/Pages/view_profile.dart';
import 'package:auto_play/Pages/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset('assets/Group_6.png'),
                    height: 100,
                  ),
                  Container(
                    child: Image.asset('assets/Ellipse 14.png'),
                    height: 100,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, bottom: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color.fromARGB(255, 4, 21, 35),
                      fixedSize: Size(200, 60)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) {
                        return Time();
                      },
                    ));
                  },
                  child: Text(
                    'Time',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Color.fromARGB(255, 4, 21, 35),
                    fixedSize: Size(200, 60)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) {
                      return Weather();
                    },
                  ));
                },
                child: Text(
                  'Weather',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
