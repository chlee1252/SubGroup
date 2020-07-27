import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subgroup/animation/delayedAnimation.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/providers/forgetProvider.dart';
import 'package:subgroup/screen/loginScreen.dart';
import 'package:subgroup/widget/circularGradientButton.dart';
import 'package:subgroup/widget/gradientContainer.dart';
import 'package:subgroup/widget/loginInput.dart';
import 'package:subgroup/widget/textButton.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const id = "forgetPasswordScreen";

  //TODO: Firebase find password support (Maybe use Provider?)
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _emailController = TextEditingController();
//    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<ForgetProvider>(
          builder: (context, value, child) {
            return GradientContainer(
              height: size.height,
              gradientColor: greenGradient,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DelayedAnimation(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0),
                      height: size.height * 0.15,
                      child: Text(
                        !value.getIsEmail() ? "Forget Password?" : "Forget your Email?",
                        style: titleTextStyle,
                      ),
                    ),
                    delay: 800,
                  ),
                  DelayedAnimation(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        child: Form(
                          key: value.getKey(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0,),
                                child: LoginInput(
                                  controller: _emailController,
                                  hintText: !value.getIsEmail() ? "Email Address" : "Enter Your Name",
                                  icon: !value.getIsEmail() ? Icons.mail : Icons.account_box,
                                  keyboard: TextInputType.emailAddress,
                                  validator: (val) {
                                    if (!value.getIsEmail()) {
                                      if (!EmailValidator.validate(val.trim())) {
                                        return emailErrorMessage;
                                      }
                                    } else {
                                      if (val.trim().length == 0) {
                                        return nameErrorMessage;
                                      }
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              CircularGradientButton(
                                title: "SUBMIT",
                                height: 42,
                                width: double.infinity,
                                borderRadius: circularButtonRadius,
                                gradient: buttonGradient,
                                onPressed: () {
                                  if (value.getKey().currentState.validate()) {
                                    final email = _emailController.text.trim();
                                    print(email);
                                  }
                                },
                              ),
                              CircularGradientButton(
                                title: "BACK",
                                height: 42,
                                width: double.infinity,
                                borderRadius: circularButtonRadius,
                                gradient: backButtonGradient,
                                onPressed: () => Navigator.pushReplacementNamed(
                                    context, LoginScreen.id),
                              ),
                              TextButton(
                                title: !value.getIsEmail() ? "Don't know your email?" : "Don't know your password",
                                onPressed: () => value.reset(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    delay: 1600,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
