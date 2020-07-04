import 'package:flutter/material.dart';

class ShakeAnimation extends StatefulWidget {
  ShakeAnimation({this.child});

  final Widget child;
  @override
  _ShakeAnimationState createState() => _ShakeAnimationState();
}

class _ShakeAnimationState extends State<ShakeAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animationOffset;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    _animationOffset = Tween(begin: 0.0, end: 24.0)
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(_controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _controller.reverse();
            }
          });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationOffset,
      child: widget.child,
      builder: (buildContext, child) {
        return child;
      }
    );
  }
}
