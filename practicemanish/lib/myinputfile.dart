import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint, label;
  final TextInputType keyboardtype;

  MyInputField(this.controller, this.hint, this.label, this.keyboardtype) 
  // {
  //   // this.controller = controller;
  //   // this.hint = hint;
  //   // this.label = label;
  //   // this.keyboardtype = keyboardtype;
  // }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardtype,
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
