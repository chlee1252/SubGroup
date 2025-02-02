import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subgroup/providers/AuthProvider.dart';
import 'package:subgroup/screen/loginScreen.dart';
import 'package:subgroup/widget/profileWidget.dart';
import 'package:subgroup/widget/textButton.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 5.0),
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ProfileWidget(),
            TextButton(
              title: "Invite a Friend",
              onPressed: () {
                print("Invite a Friend");
              },
            ),
            TextButton(
              title: "Settings",
              onPressed: () {
                print("settings");
              },
            ),
            TextButton(
              title: "Logout",
              color: Colors.red,
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false)
                    .signOut()
                    .then((value) => Navigator.pushReplacementNamed(
                        context, LoginScreen.id));
              },
            )
          ],
        ),
      ),
    );
  }
}
