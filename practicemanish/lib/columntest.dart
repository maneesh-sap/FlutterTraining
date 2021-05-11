import 'package:flutter/material.dart';
import 'package:practicemanish/login.dart';
import 'myinputfile.dart';

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
        body: (Login(
                emailcontroller,
                namecontroller,
                passwordcontroller,
                "hint1",
                "hint2",
                "hint3",
                "label1",
                "label2",
                "label3",
                TextInputType.text,
                TextInputType.text,
                TextInputType.text,
                massage,
                reset,
                submit)

            //   Column
            // (
            //   children: [
            //     MyInputField(namecontroller, "Enter Your Name", "Manish", TextInputType.text ),
            //     MyInputField(namecontroller, "Enter Your Email", "xyz@gmail.com", TextInputType.text ),
            //     MyInputField(namecontroller, "Enter Your Password", "abcd123!@#", TextInputType.text ),

            //     Text(massage),
            //     // Text("This is Practice App Body"),
            //     // Text("This is Practice App Body"),

            //     Row(
            //       children: [
            //         RaisedButton(onPressed: reset, child: Text("Reset")),
            //         RaisedButton(onPressed: submit, child: Text("Submit"))
            //       ],
            //     )
            //   ],
            // )
            ));
    // Text("This is Practice App Body")
  }
}
