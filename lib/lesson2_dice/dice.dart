import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Dice Game'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'images/dice$leftDice.png',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Image.asset(
                    'images/dice$rightDice.png',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent,
              minimumSize: const Size(100, 60),
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 50,
            ),
            onPressed: () {
              setState(() {
                leftDice = Random().nextInt(6) + 1;
                rightDice = Random().nextInt(6) + 1;
              });
              showToast('Left Dice: {$leftDice}, Right Dice: {$rightDice}');
            },
          )
        ],
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
  );
}
