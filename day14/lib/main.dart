import 'package:day14/store_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 14',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StoreScreen(),
    );
  }
}
