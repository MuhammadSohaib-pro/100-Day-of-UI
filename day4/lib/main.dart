import 'package:flutter/material.dart';
import 'package:tiktok_desgin/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TikTok UI',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
