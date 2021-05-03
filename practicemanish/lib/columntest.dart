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
  String email, name, password, massage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirstPracticeApp"),
        ),
        body: (Column(
          children: [
            TextField(
              onSubmitted: (value) {
                setState(() {
                  name = value;
                  massage = massage + value;
                });
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "xyz@email.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            TextField(
              onSubmitted: (value) {
                setState(() {
                  email = value;
                  massage = massage + value;
                });
                // print(value);
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "abcd123!@#",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            TextField(
              onSubmitted: (value) {
                setState(() {
                  password = value;
                  massage = massage + value;
                });
              },
              decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Capital Letter",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),

            Text(massage),
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
