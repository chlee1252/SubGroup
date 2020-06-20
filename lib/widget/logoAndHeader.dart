import 'package:flutter/material.dart';

class LogoAndHeader extends StatelessWidget {
  LogoAndHeader({this.header});

  final String header;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.lightGreenAccent,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            this.header,
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 20.0,
              color: Colors.lightGreen,
            ),
          ),
        ),
      ],
    );
  }
}