import 'package:flutter/material.dart';
import './styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 57, 26, 111),
            Color.fromARGB(255, 216, 7, 7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const StyledText("Jollof Central"),
    );
  } 
}