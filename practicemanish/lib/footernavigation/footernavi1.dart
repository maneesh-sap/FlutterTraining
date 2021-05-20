import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedindex = 0;
  void _tab(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirstPracticeApp"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "Alarm",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: "Time",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),
              label: "Photo",
            )
          ],
          currentIndex: _selectedindex,
          selectedItemColor: Colors.amber,
          onTap: _tab,
        ),
        body: (Text("Selected Index" + _selectedindex.toString())));
  }
}
