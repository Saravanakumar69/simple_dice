import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}



class _DiceRollerState extends State<DiceRoller>{
  var currentDiceImage = 2;

  void RollDice() {
    setState((){
      currentDiceImage=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assests/images/dice-$currentDiceImage.png',
              width: 200,
              ),
              const SizedBox(height: 20,),
              TextButton(
                onPressed: RollDice, 
                style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20) ,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28
                ),
                ),
                child: Text('Roll Dice'),
              ),
            ],
          );
  }
}
