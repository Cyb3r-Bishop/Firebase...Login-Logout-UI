import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final TextEditingController controller;
  final bool obsecureText;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller, required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
        decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey.shade800,
      ),
      prefixIcon: icon,
      prefixIconColor: Colors.grey.shade500,
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        color: Colors.grey.shade500,
      )),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        color: Colors.grey.shade500,
      )),
    ));
  }
}
