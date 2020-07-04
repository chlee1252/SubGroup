import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:subgroup/animation/delayedAnimation.dart';
import 'package:subgroup/helper/passwordValidate.dart';
import 'package:subgroup/screen/screens.dart';
import 'package:subgroup/widget/circulaGradientrButton.dart';
import 'package:subgroup/widget/loginInput.dart';
import 'package:subgroup/widget/logoAndHeader.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/screen/homeScreen.dart';

class RegisterScreen extends StatelessWidget {
  static final id = "registerscreen";
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _password = TextEditingController();
    final TextEditingController _confirmPassword = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DelayedAnimation(
                child: LogoAndHeader(
                  header: "Register to App",
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DelayedAnimation(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 2.0,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          LoginInput(
                            hintText: "Email Address",
                            icon: Icons.mail,
                            keyboard: TextInputType.emailAddress,
                            validator: (val) => EmailValidator.validate(val)
                                ? null
                                : emailErrorMessage,
                          ),
                          LoginInput(
                            controller: _password,
                            hintText: "Password",
                            icon: Icons.lock,
                            obscureText: true,
                            validator: (val) {
                              if (val.length < 8) {
                                return shortPWMessage;
                              }
                              if (!passwordValidate(val)) {
                                return passwordRequirementErrorMessage;
                              }
                              return null;
                            },
                          ),
                          LoginInput(
                            controller: _confirmPassword,
                            hintText: "Confirm Password",
                            icon: Icons.lock,
                            obscureText: true,
                            validator: (val) => _password.text != val
                                ? differentPasswordError
                                : null,
                          ),
                          CircularGradientButton(
                            title: "REGISTER",
                            height: 42,
                            width: double.infinity,
                            borderRadius: circularButtonRadius,
                            gradient: buttonGradient,
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.pushReplacementNamed(
                                    context, HomeScreen.id);
                              }
                            },
                          ),
                          CircularGradientButton(
                            title: "BACK",
                            height: 42,
                            width: double.infinity,
                            borderRadius: circularButtonRadius,
                            gradient: backButtonGradient,
                            onPressed: () => Navigator.pushReplacementNamed(context, WelcomeScreen.id),
                          ),
                        ],
                      ),
                    ),
                  ),
                  delay: 1000,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
