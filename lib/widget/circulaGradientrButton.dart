import 'package:flutter/material.dart';

class CircularGradientButton extends StatelessWidget {
  CircularGradientButton(
      {this.height,
      this.gradient,
      this.title,
      this.borderRadius,
      @required this.onPressed});

  final double height;
  final Gradient gradient;
  final String title;
  final Function onPressed;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.height,
        decoration: BoxDecoration(
          borderRadius: this.borderRadius,
          gradient: this.gradient,
        ),
        child: MaterialButton(
          child: Text(this.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              )),
          onPressed: this.onPressed,
        ));
  }
}
