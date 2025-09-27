
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:rock_paper_scissor/pages/resultPage.dart';
import 'dart:math';


class GamepageRockpapercopy extends StatefulWidget {
  const GamepageRockpapercopy({super.key});
   

  @override
  State<GamepageRockpapercopy> createState() => _GamepageRockpaperState();
}

class _GamepageRockpaperState extends State<GamepageRockpapercopy> {
  
  late String keyplayer1;
  late String keyplayer2;
  int round =0;
  int totalRounds=6;

  void displayResult(String a, String b){
    round++;
    String winner = 'Draw';
    winner = getwinner(keyplayer1,keyplayer2);

    Navigator.push(context,
     MaterialPageRoute(builder: (context){
          return Resultpage(winner: winner,Player1: keyplayer1,Player2: keyplayer2);
     })
     );

      // If not the last round, pop after 10 seconds
      if (round < totalRounds) {
        Future.delayed(Duration(seconds: 3), () {
          Navigator.pop(context); // Pop the result screen
        });
      }

  }
  

  String getwinner(String a,String b){
    if((a=='a'&& b=='l')||(a=='p'&& b=='j')||(a=='d'&& b=='k')){
      return 'Player1';
    }
    else if((a=='d'&& b=='j')||(a=='a'&& b=='k')||(a=='s'&& b=='l')){
      return 'Player1';
    }
    else {
      return 'Draw';
    }
  }
  
 final Random random = Random();
  void compMove(){
   int move = random.nextInt(3);
   setState(() {
     if(move==0){
      keyplayer2 = 'j';
     }
     else if(move==0){
      keyplayer2 = 'k';
     }
     else if(move==0){
      keyplayer2 = 'l';
     }
   });
   displayResult(keyplayer1, keyplayer2);
     
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [ Color.fromRGBO(15, 32, 39, 1) ,Color(0xFF203A43) ,Color(0xFF2C5364) ],
          begin: Alignment.topCenter,end: Alignment.bottomCenter)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                border: Border.all(color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                
                child: Text("Rock Paper Scissor",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 3
                  ),
                  ),
              ),
            ),
    
            SizedBox(height: 20,),
    
    
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Score:",
                style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 3
                      ),
                      ),
                
                Card(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Player A\n    15",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 10, 10, 10),
                        wordSpacing: 3
                        ),),
                  ),
                ),
                // --------------------------------------------------
                Card(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Player B\n    15",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 10, 10, 10),
                        wordSpacing: 3
                        ),),
                  ),
                )
              ],
            ),
    
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            keyplayer1 = 'p';
                          });
                          compMove();
                          
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/paper_btn.png',
                            scale: 1.5,
                            ),
                        ),
                      ),
                  
                      SizedBox(height: 5,), 
                      
                      GestureDetector(
                        onTap: () {
                            setState(() {
                            keyplayer1 = 'r';
                          });
                          compMove();
                          
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/rock_btn.png',
                            scale: 1.5,),
                        ),
                      ),
                  
                      SizedBox(height: 5,),  
                      
                      GestureDetector(
                        onTap: (){
                            setState(() {
                            keyplayer1 = 's';
                          });
                          compMove();
                          
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/scisor_btn.png',
                            scale: 1.5,),
                        ),
                      ),
                  
    
                // ---------------------------------player1--------------
                
    
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:signout ,
      child: Text("sign out"),),
    );
  }

  void signout(){
    FirebaseAuth.instance.signOut();
  }
}