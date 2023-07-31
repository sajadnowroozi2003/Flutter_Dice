import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
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
  var RightchaneDiceNumber = 6;
  var LeftDiceNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    RightchaneDiceNumber=Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$RightchaneDiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    LeftDiceNumber=Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$LeftDiceNumber.png')),

          ),
        ],
      ),
    );
  }
}
