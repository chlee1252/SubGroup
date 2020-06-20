import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  LoginInput(
      {this.hintText,
      this.icon,
      this.obscureText = false,
      this.validator,
      this.keyboard,
      this.suffixIcon,
      this.controller});

  final bool obscureText;
  final String hintText;
  final IconData icon;
  final TextInputType keyboard;
  final GestureDetector suffixIcon;
  final TextEditingController controller;
  final Function validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 25.0),
      child: TextFormField(
        validator: this.validator,
        controller: this.controller,
        keyboardType: this.keyboard,
        obscureText: this.obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            this.icon,
            size: 22,
          ),
          hintText: this.hintText,
          hintStyle: TextStyle(fontSize: 17),
          suffixIcon: this.suffixIcon,
        ),
      ),
    );
  }
}
