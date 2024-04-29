import 'dart:math';
import 'package:flutter/material.dart';

final rand = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentRoll1 = 1;
  int currentRoll2 = 1;

  void rollDice() {
    setState(() {
      currentRoll1 = rand.nextInt(6) + 1;
      currentRoll2 = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/dice-$currentRoll1.png',
              width: 200,
            ),
            Image.asset(
              'assets/images/dice-$currentRoll2.png',
              width: 200,
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
