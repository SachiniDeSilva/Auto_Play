import 'package:auto_play/Pages/day_music_1.dart';
import 'package:auto_play/Pages/day_music_2.dart';
import 'package:auto_play/Pages/get_start.dart';
import 'package:flutter/material.dart';





class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  late TextEditingController timeController;
  bool isSwitched = true;

  @override
  void initState() {
    super.initState();
    timeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Image.asset('assets/Group_6.png'),
                    height: 70,
                  ),
                  SizedBox(
                    child: Image.asset('assets/Ellipse 14.png'),
                    height: 70,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context, const GetStart());
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Time',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(80, 158, 158, 158),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: Stack(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Image.asset('assets/MOON.png'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: SizedBox(
                        width: 300,
                        child: Stack(
                          children: [
                            SwitchListTile(
                              activeColor: Colors.white,
                              activeTrackColor: Colors.yellow,
                              inactiveThumbColor: Colors.white,
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  if (value == true) {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => const DayMusic1(),
                                      ),
                                    );
                                  } else {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => const Day_Music_2(),
                                      ),
                                    );
                                  }
                                });
                              },
                              secondary: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        isSwitched
                                            ? 'assets/MOON.png'
                                            : 'assets/SUN.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromARGB(255, 4, 21, 35),
                  fixedSize: const Size(200, 50),
                ),
                onPressed: () {
                  String enteredTime = timeController.text;
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const DayMusic1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/Ellipse 14.png',
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
