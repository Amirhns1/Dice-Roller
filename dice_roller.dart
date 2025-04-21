import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 1;
  void rolldice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceImage.png',
          width: 150,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: const Color.fromARGB(255, 25, 25, 25),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
