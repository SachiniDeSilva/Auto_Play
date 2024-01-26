import 'package:auto_play/Pages/get_start.dart';
import 'package:auto_play/Pages/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DayMusic1 extends StatefulWidget {
  const DayMusic1({Key? key}) : super(key: key);

  @override
  State<DayMusic1> createState() => _DayMusic1State();
}

class _DayMusic1State extends State<DayMusic1> {
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
  final Icon _playIcon = const Icon(Icons.play_arrow);
  final Icon _pauseIcon = Icon(Icons.pause);

  bool isSwitched = true;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset('assets/Group_6.png'),
                    height: 130,
                  ),
                  Container(
                    child: Image.asset('assets/Ellipse 14.png'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context, Time());
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Time',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 100,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(80, 158, 158, 158),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        width: 300,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Image.asset('assets/MOON.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                color: Color.fromARGB(126, 158, 158, 158),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      fixedSize: Size(150, 30)),
                  onPressed: () {},
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
                padding: const EdgeInsets.only(left: 200, top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: Size(200, 50)),
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Text(
                  'Hello Good Night',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
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
              // ... rest of the ListTile widgets for the other music items ...

              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(165, 78, 77, 77),
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
              icon: Icon(Icons.account_circle),
              iconSize: 40,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
