import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 29, 31, 155),
           Color.fromARGB(255, 111, 54, 176),
        ),
      ),
    ),
  );
}
