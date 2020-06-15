import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  TextButton({this.title, this.onPressed, this.color=Colors.black});

  final String title;
  final Function onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        this.title,
        style: TextStyle(fontSize: 15.0, color: this.color),
      ),
      onPressed: this.onPressed,
    );
  }
}
