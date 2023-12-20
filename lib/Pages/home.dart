import 'package:flutter/material.dart';
import 'mydrawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: mydrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 2, 27, 48),
        child: IconButton(
          color: Colors.white,
          iconSize: 40.0,
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(167, 250, 248, 248),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: IconButton(
                color: Colors.black,
                iconSize: 40.0,
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
            ),
            IconButton(
              color: Colors.black,
              iconSize: 40.0,
              onPressed: () {},
              icon: Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/OIP 1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 80, 0, 0),
                child: Builder(builder: (context) {
                  return IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 80, 50),
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color.fromARGB(193, 3, 168, 244),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 450.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(49, 3, 168, 244),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60.0),
                        child: Center(child: Image.asset('assets/image 1.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Get Start'),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size.fromWidth(150),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              backgroundColor: Color.fromARGB(255, 4, 21, 35),
                              textStyle: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
