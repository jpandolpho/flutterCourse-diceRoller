import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            colors: [Colors.deepPurple, Color.fromARGB(255, 65, 30, 125)]),
      ),
    ),
  );
}
