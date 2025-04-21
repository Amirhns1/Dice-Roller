import 'package:flutter/material.dart';
import 'package:yadgiri/dice_roller.dart';
import 'package:yadgiri/styled_text.dart';
// import 'package:yadgiri/styled_text.dart';

// if we want to use a value multiple times in our code we can use
// var to save them first and use them again.
// var startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradientContainar extends StatelessWidget {
  const GradientContainar(this.c1, this.c2, {super.key});
  const GradientContainar.red({super.key})
      : c1 = const Color.fromARGB(255, 44, 44, 44),
        c2 = const Color.fromARGB(255, 148, 70, 65);
  final Color c1;
  final Color c2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [c1, c2],
          begin: Alignment.topLeft,
          end: endAlign,
        ),
      ),
      child: const Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DiceRoller(),
          StyledText("Amirhns1's First App for his Close people!")
        ],
      ) //DiceRoller(),
          ),
    );
  }
}

// class GradientContainar extends StatelessWidget {
//   GradientContainar(this.c1, this.c2, {super.key});
//   GradientContainar.red({super.key})
//       : c1 = const Color.fromARGB(255, 44, 44, 44),
//         c2 = const Color.fromARGB(255, 148, 70, 65);
//   final Color c1;
//   final Color c2;
//   var activeDiceImage = 'assets/images/dice-1.png';

//   void rolldice() {
//     activeDiceImage = 'assets/images/dice-3.png';
//     print("changing dice...");
//   }

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [c1, c2],
//           begin: Alignment.topLeft,
//           end: endAlign,
//         ),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               activeDiceImage,
//               width: 150,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextButton(
//               onPressed: rolldice,
//               style: TextButton.styleFrom(
//                 // padding: const EdgeInsets.only(
//                 //   top: 20,
//                 // ),
//                 foregroundColor: const Color.fromARGB(255, 255, 255, 255),
//                 textStyle: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               child: const Text("Roll Dice"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
