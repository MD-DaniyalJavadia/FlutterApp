import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/auth-ui/welcome-page.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Learning Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home : AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset('assets/Capture.png'),
          nextScreen: WelcomePage(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.blue));
  }
}