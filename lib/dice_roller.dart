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
  int currentRoll = 2;

  void rollDice() {
    setState(() {
      currentRoll = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRoll.png',
          width: 200,
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
