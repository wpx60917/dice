import 'package:flutter/material.dart';
import 'package:dice/dice_roll.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientBox extends StatelessWidget {
  const GradientBox(this.gradientColors, {super.key});

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: gradientColors,
        begin: startAlignment,
        end: endAlignment,
      )),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }

}
