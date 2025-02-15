import 'package:day11/view/appointment_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 11',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      home: const AppointmentView(),
    );
  }
}
