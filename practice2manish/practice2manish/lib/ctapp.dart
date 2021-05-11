import 'package:flutter/material.dart';
import 'myinputfile.dart';

class CtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApplication",
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
            MyInputField(namecontroller, "Enter Your Name", "Manish",
                TextInputType.text),
            MyInputField(emailcontroller, "Enter Your Email", "xyz@gmail.com",
                TextInputType.text),
            MyInputField(passwordcontroller, "Enter Your Password",
                "abcd123!@#", TextInputType.text),

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
