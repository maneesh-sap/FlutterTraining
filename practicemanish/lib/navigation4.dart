import 'package:flutter/material.dart';
import 'package:practicemanish/login.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirstPracticeApp"),
        ),
        body: (ListView(
          children: [
            Text("Second Screen"),
            RaisedButton(onPressed: () {
              Navigator.pop(context);
            })
          ],
        )));
  }
}
