import 'package:flutter/material.dart';
import 'myinputfile.dart';

class LoginForm extends StatelessWidget {
  LoginForm(
      this.emailcontroller,
      this.namecontroller,
      this.passwordcontroller,
      this.hint1,
      this.hint2,
      this.hint3,
      this.label1,
      this.label2,
      this.label3,
      this.keyboardtype1,
      this.keyboardtype2,
      this.keyboardtype3,
      this.massage);

  final TextEditingController emailcontroller,
      namecontroller,
      passwordcontroller;
  final String hint1, hint2, hint3, label1, label2, label3, massage;
  final TextInputType keyboardtype1, keyboardtype2, keyboardtype3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyInputField(
            namecontroller, "Enter Your Name", "Manish", TextInputType.text),
        MyInputField(namecontroller, "Enter Your Email", "xyz@gmail.com",
            TextInputType.text),
        MyInputField(namecontroller, "Enter Your Password", "abcd123!@#",
            TextInputType.text),

        Text(massage),
        // Text("This is Practice App Body"),
        // Text("This is Practice App Body"),
      ],
    );
  }
}
