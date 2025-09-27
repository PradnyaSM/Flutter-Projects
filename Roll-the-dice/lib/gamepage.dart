// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';
import 'dart:math';

import 'package:dice_ass/result_dilogue.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_navigation/get_navigation.dart';

class Gamepage extends StatefulWidget {
  const Gamepage({super.key});

  @override
  State<Gamepage> createState() {
    return _GamepageState();
  }
}

class _GamepageState extends State<Gamepage> {
  final random = Random();
  bool roll1 = true;
  bool roll2 = false;
  int num = 1;
  int dice1 = 1;
  int dice2 = 1;
  int score1 = 0;
  int score2 = 0;
  int turn = 1;

  void rollDice(player) {
    setState(() {
      
      if (player == 1 && roll1 == true) {
        num = random.nextInt(6) + 1;
        score1 = score1 + num;
        dice1 = num;
        roll1 = false;
        roll2 = true;
        turn = 2;
        checkwin();
      }
      if (player == 2 && roll2 == true) {
        num = random.nextInt(6) + 1;
        dice2 = num;
        score2 = score2 + num;
        roll2 = false;
        roll1 = true;
        turn = 1;
        checkwin();
      }
    });
  } // Between 0 and 6.

   void reset(){
    if(score1>=10){
      roll1 = true;
      roll2 = false;
      turn = 2;
    }
    if(score2>=10){
      roll1 = false;
      roll2 = true;
      turn = 1;
    }
    setState(() {
       num = 1;
      dice1 = 1;
      dice2 = 1;
      score1 = 0;
      score2 = 0;
      
    });
    // navigator?.pop(context);
    // Navigator.of(context).pop();
    Navigator.pop(context);
  }

  // //player who scores 10 score first, will win
  void checkwin(){
    if(score1>=10){
      showDialog(context: context, builder: (ctx)=>ResultDilogue(whowon: "Player 1",reset: reset,));
    }
    if(score2>=10){
      showDialog(context: context, builder: (ctx)=>ResultDilogue(whowon: "Player 2",reset: reset,));
    }
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(15, 32, 39, 1), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            // stops: [0.5, 0.5],
          ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                border: Border.all(color: Colors.orangeAccent, width: 3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "ROLL THE DICE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            Text(
              " Player $turn's turn ",
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                shadows: [Shadow(color: Colors.black12,blurRadius: 3)]
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    rollDice(1);
                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            'images/dice-$dice1.png',
                            scale: 5,
                          ),
                        ),

                        Text("$score1"),
                        SizedBox(height: 80),
                        Text(
                          "PLAYER 1",
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // -------------------------dice 1-------------------------
                SizedBox(width: 600),

                GestureDetector(
                  onTap: () {
                    rollDice(2);
                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            'images/dice-$dice2.png',
                            scale: 5,
                          ),
                        ),
                        Text("$score2"),

                        SizedBox(height: 80),
                        Text(
                          "PLAYER 2",
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
