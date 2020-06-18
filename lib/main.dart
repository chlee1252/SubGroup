import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subgroup/screen/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SubGroup',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: LoginScreen(),
//      initialRoute: LoginScreen.id,
      home: LoginScreen(),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id : (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        CreateScreen.id: (context) => CreateScreen(),
      }
    );
  }
}
