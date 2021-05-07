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
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  void reset() {
    setState(() {
      emailcontroller.text = "";
      namecontroller.text = "";
      passwordcontroller.text = "";
    });
  }

  void submit() {
    setState(() {
      String myname = namecontroller.text;
      String myemail = emailcontroller.text;
      String mypassword = passwordcontroller.text;

      massage = "$myname $myemail $mypassword";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirstPracticeApp"),
        ),
        body: (Column(
          children: [
            TextField(
              controller: namecontroller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "xyz@email.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            TextField(
              controller: passwordcontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "abcd123!@#",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            TextField(
              controller: namecontroller,
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
                RaisedButton(onPressed: reset, child: Text("Reset")),
                RaisedButton(onPressed: submit, child: Text("Submit"))
              ],
            )
          ],
        )));
    // Text("This is Practice App Body")
  }
}
