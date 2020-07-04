import 'package:flutter/material.dart';
import 'package:subgroup/animation/delayedAnimation.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/screen/loginScreen.dart';
import 'package:subgroup/screen/registerScreen.dart';
import 'package:subgroup/widget/circulaGradientrButton.dart';
import 'package:subgroup/widget/logoAndHeader.dart';

class WelcomeScreen extends StatelessWidget {
  static final id = "welcomeScreen";
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
