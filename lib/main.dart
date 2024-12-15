import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan.shade800,
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.cyan.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int DiceNumber = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    DiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$DiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: () {
                setState(() {
                  rightDice = Random().nextInt(6)+1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

