import 'package:flutter/material.dart';
import 'package:subgroup/constant.dart';

class ProfileWidget extends StatelessWidget {

  //TODO: UserProfile Image
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.height * 0.3,
        ),
        Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    blurRadius: 1.0,
                    spreadRadius: 2.0,
                    offset: Offset(0, 2.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Changhwan Lee",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
