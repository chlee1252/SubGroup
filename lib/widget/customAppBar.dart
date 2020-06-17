import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({this.iconOnPressed, @required this.icon, this.iconAlignment=MainAxisAlignment.end});

  final Function iconOnPressed;
  final IconData icon;
  final MainAxisAlignment iconAlignment;
  @override
  Widget build(BuildContext context) {
    final double barHeight = 50.0;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      width: double.infinity,
      height: barHeight + statusBarHeight,
      child: Container(
        padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 40),
        child: Row(
          mainAxisAlignment: this.iconAlignment,
          children: [
            IconButton(
              icon: Icon(
                this.icon,
                color: Colors.white,
              ),
              onPressed: iconOnPressed,
            ),
          ],
        ),
      ),
    );
  }
}
