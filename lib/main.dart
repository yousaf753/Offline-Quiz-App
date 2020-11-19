import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen1.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() => runApp(QuizApp());
class QuizApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AnimatedSplashScreen(
        splash:Image( image: AssetImage('images/splash.png'),) ,
        nextScreen: Screen1(),
        splashTransition: SplashTransition.rotationTransition,
      )
    );
  }
}



