import 'package:auto_play/Pages/favorite.dart';
import 'package:auto_play/Pages/get_start.dart';
import 'package:auto_play/Pages/view_profile.dart';
import 'package:auto_play/Pages/weather_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset('assets/Group_6.png'),
                    height: 70,
                  ),
                  Container(
                    child: Image.asset('assets/Ellipse 14.png'),
                    height: 70,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 400),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context, GetStart());
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Center(
                  child: Text(
                    'Identifying your\n       weather',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        height: 1.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Color.fromARGB(255, 4, 21, 35),
                    fixedSize: Size(200, 50)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Weather_1();
                    },
                  ));
                },
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
