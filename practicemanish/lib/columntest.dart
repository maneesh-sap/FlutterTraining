import 'package:flutter/material.dart';

class ColTestApp extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirstPracticeApp"),
        ),
        body: (Column(
          children: [
            TextField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "xyz@email.com",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow))),
            ),
            TextField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "abcd123!@#",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow))),
            ),
            TextField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Capital Letter",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow))),
            ),

            // Text("This is Practice App Body"),
            // Text("This is Practice App Body"),
            // Text("This is Practice App Body"),
            Row(
              children: [
                RaisedButton(onPressed: null, child: Text("Reset")),
                RaisedButton(onPressed: null, child: Text("Submit"))
              ],
            )
          ],
        )));
    // Text("This is Practice App Body")
  }
}
