import 'package:flutter/material.dart';
import 'package:dice/gradient_box.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientBox([Color.fromARGB(255, 0, 60, 100),Color.fromARGB(255, 35, 65, 85),]),
    ),
  ));
}
