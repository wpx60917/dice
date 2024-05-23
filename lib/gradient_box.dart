import 'package:flutter/material.dart';
import 'package:dice/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientBox extends StatelessWidget {
  const GradientBox(this.gradientColors, {super.key});

  final List<Color> gradientColors;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: gradientColors,
        begin: startAlignment,
        end: endAlignment,
      )),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  )),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
