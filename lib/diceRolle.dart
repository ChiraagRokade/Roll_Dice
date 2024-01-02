// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice_2.png';
  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDice = 'assets/images/dice_$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              backgroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28, color: Colors.black)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
