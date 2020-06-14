import 'package:flutter/material.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/helper/greets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final greet = greeting();
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            print("Leading Button Pressed");
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.15,
            child: Center(
              child: Text(
                "Good $greet,\nChanghwan Lee",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 27.0),
              ),
            ),
          ),
          SlidingUpPanel(
            panel: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20,20,0,10),
                  child: Text(
                    "Group",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    width: size.width,
                    child: Card(
                      elevation: 2.0,
                      color: Colors.orange,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            panelSnapping: false,
            borderRadius: radius,
            minHeight: size.height * 0.6,
            maxHeight: size.height,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Notification"),
            icon: Icon(Icons.notifications),
          )
        ],
      ),
    );
  }
}