import 'package:flutter/material.dart';
import 'package:subgroup/animation/delayedAnimation.dart';
import 'package:subgroup/constant.dart';
import 'package:subgroup/screen/homeScreen.dart';
import 'package:subgroup/widget/circulaGradientrButton.dart';
import 'package:subgroup/widget/gradientContainer.dart';
import 'package:subgroup/widget/loginInput.dart';
import 'package:subgroup/widget/textButton.dart';

class LoginScreen extends StatefulWidget {
  static final id = "loginscreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DelayedAnimation(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.lightGreenAccent,
                  ),
                ),
                DelayedAnimation(
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      "Log In to App",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                DelayedAnimation(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 2.0,
                    child: Column(
                      children: [
                        LoginInput(
                          hintText: "Email Address",
                          icon: Icons.mail,
                          keyboard: TextInputType.emailAddress,
                        ),
                        Container(
                          width: 250,
                          height: 1,
                          color: Colors.grey[400]
                        ),
                        LoginInput(
                          hintText: "Password",
                          icon: Icons.lock,
                          obscureText: true,
                          suffixIcon: GestureDetector(
                            child: Icon(Icons.visibility, color: Colors.black, size: 22),
                            onTap: () {
                              print("visibility");
                            },
                          )
                        ),
                        CircularGradientButton(
                          title: "LOGIN",
                          height: 42,
                          width: double.infinity,
                          borderRadius: BorderRadius.all(Radius.circular(18.0),),
                          gradient: LinearGradient(
                            colors: [
                              startGradient,
                              endGradient,
                            ],
                            begin: const FractionalOffset(0.2, 0.2),
                            end: const FractionalOffset(1.0, 1.0),
                            tileMode: TileMode.clamp,
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, HomeScreen.id);
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextButton(
                            title: "Forget Password?",
                            color: Colors.grey,
                            onPressed: () {
                              print("Forget Pasword");
                            },
                          )
                        )
                      ]
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
