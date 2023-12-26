// ignore_for_file: file_names

import 'package:flutter/material.dart';

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/images/dice_two.png',
            width: 200,
          ),
          TextButton(onPressed: onPressed, child: const Text("Roll Dice"))
        ],
      )),
    );
  }
}


// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors, begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(
//         child: StyleText('Mein Name ist Chiraag'),
//       ),
//     );
//   }
// }
