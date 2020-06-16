import 'package:flutter/material.dart';

class CircularGradientButton extends StatelessWidget {
  CircularGradientButton(
      {this.height,
        this.width,
      this.gradient,
      this.title,
      this.borderRadius,
      @required this.onPressed});

  final double width;
  final double height;
  final Gradient gradient;
  final String title;
  final Function onPressed;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
      child: Container(
          height: this.height,
          width: this.width,
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
          )),
    );
  }
}
