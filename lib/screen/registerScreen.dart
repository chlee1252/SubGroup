import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:subgroup/animation/delayedAnimation.dart';
import 'package:subgroup/helper/passwordValidate.dart';
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
                              : "Please check your email!",
                        ),
                        LoginInput(
                          controller: _password,
                          hintText: "Password",
                          icon: Icons.lock,
                          obscureText: true,
                          validator: (val) {
                            if (val.length < 8) {
                              return "Your Password is too short.\n(Minimum 8 characters)";
                            }
                            if (!passwordValidate(val)) {
                              return "Your Password should contain:\nMinimum 1 Upper Case\nMinimum 1 lower Case\nMinimum 1 Numeric Number\nMinimum 1 Special Character[!@#\$&*~]";
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
                              ? "Your password is different"
                              : null,
                        ),
                        CircularGradientButton(
                          title: "REGISTER",
                          height: 42,
                          width: double.infinity,
                          borderRadius: BorderRadius.all(
                            Radius.circular(18.0),
                          ),
                          gradient: buttonGradient,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreen.id);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
