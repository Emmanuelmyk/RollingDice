import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final random = Random();

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-3.png';

  void rollDice() {
    int randomNum = random.nextInt(6) + 1;
    setState(() {
      activeDice = 'assets/images/dice-$randomNum.png';
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      const Text(
      'RANDOM DICE',
      style: TextStyle(
        color: Color.fromARGB(255, 223, 223, 223),
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
      ),
      const SizedBox(
        height: 30,
      ),
      Image.asset(
        activeDice,
        width: 200,
      ),
      const SizedBox(
        height: 40,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          // padding: const EdgeInsets.only(top: 20,),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 25,
          ),
        ),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
