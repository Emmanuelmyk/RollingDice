import 'package:flutter/material.dart';
import 'package:learningdart/dice_roller.dart';
// import 'package:learningdart/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
// [
//  Color.fromARGB(115, 37, 24, 24),
//  Color.fromARGB(115, 197, 27, 27),
// ]
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
