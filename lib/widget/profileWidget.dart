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
            Card(
              elevation: 10.0,
              shadowColor: Colors.grey,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: placeHolderColor,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
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
