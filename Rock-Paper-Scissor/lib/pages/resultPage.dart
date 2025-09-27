import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
   Resultpage({super.key,required this.Player1,required this.Player2,required this.winner});

  String winner;
  String Player1;
  String Player2;
 
 
   String getImage(String key){
    switch(key){
      case 'a':
      case 'j':
         return "assets/images/rock_btn.png";

      case 's':
      case 'k':
         return "assets/images/paper_btn.png";

      case 'd':
      case 'l':
         return "assets/images/scisor_btn.png";

    }
   return "assets/images/scisor_btn.png";

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
                Image.asset(getImage(Player1)),
                SizedBox(width: 200,),
                Image.asset(getImage(Player2))
              ],
            ),
          
          SizedBox(height: 30,),

          Text("PLayer1 won",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 3
                  ),
                  ),
          
          ],
        ),
      ),
    );
  }
}