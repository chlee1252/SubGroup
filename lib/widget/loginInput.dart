import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  LoginInput({this.hintText, this.icon, this.obscureText=false, this.keyboard, this.gesture});

  final bool obscureText;
  final String hintText;
  final IconData icon;
  final TextInputType keyboard;
  final GestureDetector gesture;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
      child: TextField(
        keyboardType: this.keyboard,
        obscureText: this.obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            this.icon,
            color: Colors.grey,
            size: 22,
          ),
          hintText: this.hintText,
          hintStyle: TextStyle(fontSize: 17),
          suffixIcon: this.gesture,
        ),
      ),
    );
  }
}
