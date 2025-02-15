import 'package:day15/model/game_model.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final int currentIndex;
  final List<GameModel> games;

  const CustomProgressIndicator({super.key, required this.currentIndex, required this.games});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        games.length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: currentIndex == index ? 35 : 17,
          height: 4,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: currentIndex == index ? games[index].titleColor : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}