import 'package:flutter/material.dart';
import 'package:subgroup/constant.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({this.child, this.width, this.height});

  final Widget child;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            startGradient,
            endGradient,
          ],
        ),
      ),
      child: this.child,
    );
  }
}
