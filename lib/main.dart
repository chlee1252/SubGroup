import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:subgroup/animation/fadeTransition.dart';
import 'package:subgroup/providers/viewPasswordProvider.dart';
import 'package:subgroup/screen/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ViewPassword(),
        )
      ],
      child: MaterialApp(
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
        home: WelcomeScreen(),
        initialRoute: WelcomeScreen.id,
//        routes: {
//          WelcomeScreen.id : (context) => WelcomeScreen(),
//          LoginScreen.id : (context) => LoginScreen(),
//          RegisterScreen.id: (context) => RegisterScreen(),
//          HomeScreen.id: (context) => HomeScreen(),
//          CreateScreen.id: (context) => CreateScreen(),
//        },
        onGenerateRoute: (settings) {
          switch(settings.name) {
            case WelcomeScreen.id:
              return FadeRoute(page: WelcomeScreen());
              break;
            case RegisterScreen.id:
              return FadeRoute(page: RegisterScreen());
              break;
            case HomeScreen.id:
              return FadeRoute(page: HomeScreen());
              break;
            case LoginScreen.id:
              return FadeRoute(page: LoginScreen());
              break;
            case CreateScreen.id:
              return FadeRoute(page: CreateScreen());
              break;
            default:
              return null;
          }

        },
      ),
    );
  }
}
