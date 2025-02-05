import 'package:day_6/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Beattingvile",
      ),
      home: const SplashScreen(),
    );
  }
}
