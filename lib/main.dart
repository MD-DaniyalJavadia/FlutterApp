import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/auth-ui/welcome-page.dart';
import 'package:firstapp/components/singup_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'firebase_options.dart';

void main() async
{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>SigupProvider())
      ],

      child: MaterialApp(
          title: 'Online Shopping',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.grey),
          home : AnimatedSplashScreen(
              duration: 3000,
                splash: Image.asset('assets/shoppingbags.webp'),
              nextScreen: WelcomePage(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.blue)),
    );
  }
}