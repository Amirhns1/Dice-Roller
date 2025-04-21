import 'package:flutter/material.dart';
import 'package:yadgiri/styled_text.dart';
import 'dice_roller.dart';

class my_container extends StatelessWidget {
  const my_container(this.col1, this.col2, {super.key});
  final Color col1;
  final Color col2;
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DiceRoller(),
          StyledText("Amir on top!!!"),
        ],
      ),
    );
  }
}
