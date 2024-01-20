import 'package:auto_play/Pages/get_start.dart';
import 'package:auto_play/Pages/time.dart';
import 'package:auto_play/Pages/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Weather_1 extends StatefulWidget {
  const Weather_1({super.key});

  @override
  State<Weather_1> createState() => _Weather_1State();
}

class _Weather_1State extends State<Weather_1> {
  bool _isPlay1 = true;
  bool _isPlay2 = true;
  bool _isPlay3 = true;
  bool _isPlay4 = true;
  bool _isPlay5 = true;
  bool _isPlay6 = true;
  bool _isPlay7 = true;
  bool _isPlay8 = true;
  bool _isPlay9 = true;
  bool _isPlay10 = true;
  Icon _playIcon = Icon(Icons.play_arrow);
  Icon _pauseIcon = Icon(Icons.pause);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
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
              ),
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context, Weather());
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Group 84.png',
                      height: 100,
                    )
                  ],
                ),
              ),
              Container(
                color: Color.fromARGB(126, 158, 158, 158),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: Size(150, 30)),
                  onPressed: null,
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(112, 0, 0, 0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(117, 158, 158, 158),
                  ),
                  child: ListTile(
                    title: Text(
                      'Satie – Gymnopédie No.1',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    trailing: IconButton(
                      color: Colors.green,
                      icon: _isPlay1 ? _playIcon : _pauseIcon,
                      onPressed: () {
                        setState(() {
                          _isPlay1 = !_isPlay1;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Holst – Venus the Bringer of Peace (The Planets)',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay2 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay2 = !_isPlay2;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Chopin – Nocturne No.2',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay3 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay3 = !_isPlay3;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Ravel – Piano Concerto in G major',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay4 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay4 = !_isPlay4;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Beethoven – Moonlight Sonata',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay5 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay5 = !_isPlay5;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Bill Evans – Peace Piece',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay6 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay6 = !_isPlay6;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Satie – Gymnopédie No.1',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay7 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay7 = !_isPlay7;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Satie – Gymnopédie No.1',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay8 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay8 = !_isPlay8;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Satie – Gymnopédie No.1',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay9 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay9 = !_isPlay9;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(117, 158, 158, 158),
                ),
                child: ListTile(
                  title: Text(
                    'Satie – Gymnopédie No.1',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  trailing: IconButton(
                    color: Colors.green,
                    icon: _isPlay10 ? _playIcon : _pauseIcon,
                    onPressed: () {
                      setState(() {
                        _isPlay10 = !_isPlay10;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 205, 203, 203),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              iconSize: 40,
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              iconSize: 40,
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.restart_alt),
              iconSize: 40,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
