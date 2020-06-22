import 'package:flutter/material.dart';
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LogoAndHeader(
                header: "Welcome!"
              ),
              SizedBox(height: 60.0),
              CircularGradientButton(
                height: 42,
                title: "SIGN IN",
                gradient: buttonGradient,
                borderRadius: circularButtonRadius,
                onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
              ),
              CircularGradientButton(
                height: 42,
                title: "REGISTER",
                gradient: buttonGradient,
                borderRadius: circularButtonRadius,
                onPressed: () => Navigator.pushNamed(context, RegisterScreen.id),
              )
            ],
          ),
        ),
      )
    );
  }
}
