import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Colors.deepPurple,
          const Color.fromARGB(255, 65, 30, 125)
        ]),
      ),
    ),
  );
}
