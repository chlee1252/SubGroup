import 'package:flutter/material.dart';
import 'package:subgroup/constant.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
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
