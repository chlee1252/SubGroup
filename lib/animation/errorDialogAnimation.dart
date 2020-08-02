import 'package:flutter/material.dart';

class ErrorDialogAnimation extends StatefulWidget {
  ErrorDialogAnimation({this.child, @required this.forward});

  final Widget child;
  final bool forward;
  @override
  _ErrorDialogAnimationState createState() => _ErrorDialogAnimationState();
}

class _ErrorDialogAnimationState extends State<ErrorDialogAnimation> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {

      });
    });

    if (widget.forward) {
      controller.forward();
    } else {
      controller.reverse();
    }

//    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: widget.child,
    );
  }
}