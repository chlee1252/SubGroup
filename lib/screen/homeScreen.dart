import 'package:flutter/material.dart';
import 'package:subgroup/animation/delayedAnimation.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/helper/greets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:subgroup/widget/customAppBar.dart';
import 'package:subgroup/widget/gradientContainer.dart';
import 'package:subgroup/widget/profileDrawer.dart';

//TODO: Animation dispose Error Check!

class HomeScreen extends StatefulWidget {
  static final id = "homescreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    final size = MediaQuery.of(context).size;
    final greet = greeting();
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: ProfileDrawer(),
      body: Stack(
        children: [
          GradientContainer(
            child: Column(
              children: [
                CustomAppBar(
                  iconOnPressed: () {
                    _scaffoldKey.currentState.openEndDrawer();
                  },
                ),
                DelayedAnimation(
                  child: Container(
                    height: size.height * 0.15,
                    child: Center(
                      child: Text(
                        "Good $greet,\nChanghwan Lee!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DelayedAnimation(
            child: SlidingUpPanel(
              panel: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                    child: Text(
                      "Group",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    width: size.width,
                    height: size.height * .7,
                    child: Card(
                      elevation: 2.0,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
              panelSnapping: false,
              borderRadius: radius,
              minHeight: size.height * 0.6,
              maxHeight: size.height * 0.8,
            ),
            delay: 1000,
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
