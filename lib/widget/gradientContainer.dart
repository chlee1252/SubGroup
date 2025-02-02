import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({this.child, this.width, this.height, @required this.gradientColor});

  final Widget child;
  final double width;
  final double height;
  final List<Color> gradientColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: this.gradientColor,
        ),
      ),
      child: this.child,
    );
  }
}
