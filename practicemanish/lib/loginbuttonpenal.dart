import 'package:flutter/material.dart';

class LoginButtonPenal extends StatelessWidget {
  LoginButtonPenal(this.reset, this.submit);

  final Function reset, submit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RaisedButton(onPressed: reset, child: Text("Reset")),
        RaisedButton(onPressed: submit, child: Text("Submit"))
      ],
    );
  }
}
