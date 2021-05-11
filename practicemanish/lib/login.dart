import 'package:flutter/material.dart';
import 'package:practicemanish/loginbuttonpenal.dart';
import 'package:practicemanish/loginform.dart';
// import 'myinputfile.dart';

class Login extends StatelessWidget {
  Login(
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
      this.massage,
      this.reset,
      this.submit);

  final Function reset, submit;
  final TextEditingController emailcontroller,
      namecontroller,
      passwordcontroller;
  final String hint1, hint2, hint3, label1, label2, label3, massage;
  final TextInputType keyboardtype1, keyboardtype2, keyboardtype3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginForm(
            emailcontroller,
            namecontroller,
            passwordcontroller,
            hint1,
            hint2,
            hint3,
            label1,
            label2,
            label3,
            keyboardtype1,
            keyboardtype2,
            keyboardtype3,
            massage),
        LoginButtonPenal(reset, submit)
      ],
    );
  }
}
