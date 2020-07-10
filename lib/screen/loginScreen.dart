import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subgroup/animation/delayedAnimation.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/providers/viewPasswordProvider.dart';
import 'package:subgroup/screen/homeScreen.dart';
import 'package:subgroup/screen/screens.dart';
import 'package:subgroup/widget/circulaGradientrButton.dart';
import 'package:subgroup/widget/loginInput.dart';
import 'package:subgroup/widget/textButton.dart';
import 'package:subgroup/widget/logoAndHeader.dart';

class LoginScreen extends StatelessWidget {
  static const id = "loginscreen";
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DelayedAnimation(
                  child: LogoAndHeader(
                    header: "Log In to App",
                  ),
                ),
                SizedBox(height: 30.0),
                DelayedAnimation(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 2.0,
                    child: Form(
                      key: _formKey,
                      child: Column(children: [
                        LoginInput(
                          controller: _emailController,
                          hintText: "Email Address",
                          icon: Icons.mail,
                          keyboard: TextInputType.emailAddress,
                          validator: (val) => EmailValidator.validate(val)
                              ? null
                              : emailErrorMessage,
                        ),
                        Container(
                            width: 250, height: 1, color: Colors.grey[400]),
                        Consumer<ViewPassword>(
                          builder: (context, value, child) {
                            return LoginInput(
                              controller: _passwordController,
                              hintText: "Password",
                              icon: Icons.lock,
                              obscureText: value.getToggle(),
                              suffixIcon: GestureDetector(
                                child: Icon(Icons.visibility,
                                    color: Colors.black, size: 22),
                                onTap: () {
                                  value.toggle();
                                },
                              ),
                              validator: (val) =>
                              val.isEmpty ? emptyPasswordMessage : null,
                            );
                          },
                        ),
                        CircularGradientButton(
                          title: "LOGIN",
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
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextButton(
                              title: "Forget Password?",
                              color: Colors.grey,
                              onPressed: () {
                                print("Forget Pasword");
                              },
                            ))
                      ]),
                    ),
                  ),
                  delay: 1000,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
