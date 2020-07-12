import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subgroup/animation/delayedAnimation.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/providers/AuthProvider.dart';
import 'package:subgroup/screen/loginScreen.dart';
import 'package:subgroup/screen/registerScreen.dart';
import 'package:subgroup/screen/screens.dart';
import 'package:subgroup/widget/circularGradientButton.dart';
import 'package:subgroup/widget/logoAndHeader.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = "welcomeScreen";
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, AuthProvider user, _) {
        switch (user.status) {
          case Status.Uninitialized:
            return WelcomeScreenWidgets();
          case Status.Unauthenticated:
            return WelcomeScreenWidgets();
          case Status.Authenticated:
            return HomeScreen();
        }
        return null;
      },

    );
  }
}

class WelcomeScreenWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                DelayedAnimation(
                  child: LogoAndHeader(
                      header: "Welcome!"
                  ),
                ),
                SizedBox(height: 60.0),
                // Added Another Column to create Animation.
                DelayedAnimation(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CircularGradientButton(
                          height: 42,
                          title: "SIGN IN",
                          gradient: buttonGradient,
                          borderRadius: circularButtonRadius,
                          onPressed: () => Navigator.pushReplacementNamed(context, LoginScreen.id),
                        ),
                        CircularGradientButton(
                          height: 42,
                          title: "REGISTER",
                          gradient: buttonGradient,
                          borderRadius: circularButtonRadius,
                          onPressed: () => Navigator.pushReplacementNamed(context, RegisterScreen.id),
                        )
                      ],
                    ),
                  ),
                  delay: 1000,
                ),
              ],
            ),
          ),
        )
    );
  }
}
