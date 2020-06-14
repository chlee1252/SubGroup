import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double barHeight = 50.0;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      width: double.infinity,
      height: barHeight + statusBarHeight,
      child: Container(
        padding: EdgeInsets.only(right: 8.0, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                print("Hello World");
              },
            ),
          ],
        ),
      ),
    );
  }
}
