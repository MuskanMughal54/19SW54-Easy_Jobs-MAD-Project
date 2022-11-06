import 'package:easy_jobs/screens/home_screen.dart';
import 'package:easy_jobs/screens/registerationScreen.dart';
import 'package:easy_jobs/screens/screens.dart';
import 'package:easy_jobs/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      // initialRoute: SplashScreen.idScreen,
      // routes:
      // {
      // registerationScreen.idScreen: (context) => registerationScreen(),
      // LoginScreen.idScreen: (context) => LoginScreen(),
      // SplashScreen.idScreen: (context) => SplashScreen(),
      //HomeScreen.idScreen: (context) => HomeScreen(),
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}
