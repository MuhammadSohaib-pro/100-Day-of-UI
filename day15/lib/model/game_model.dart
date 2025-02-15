import 'package:flutter/material.dart';

class GameModel {
  String imagePath;
  final String title;
  final Color titleColor;
  final String subtitle;
  final Gradient gradient;
  GameModel({
    required this.titleColor,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.gradient,
  });
}
