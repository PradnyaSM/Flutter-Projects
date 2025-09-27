import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rock_paper_scissor/pages/resultPage.dart';

class GamepageRockpaper extends StatefulWidget {
  const GamepageRockpaper({super.key});
   

  @override
  State<GamepageRockpaper> createState() => _GamepageRockpaperState();
}

class _GamepageRockpaperState extends State<GamepageRockpaper> {


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
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/images/paper_btn.png',
                          scale: 1.5,
                          ),
                      ),
                  
                      SizedBox(height: 5,), 
                      
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/rock_btn.png',
                          scale: 1.5,),
                      ),
                  
                      SizedBox(height: 5,),  
                      
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/images/scisor_btn.png',
                          scale: 1.5,),
                      ),
                    ],
                  ),
                ),
    
                // ---------------------------------player1--------------
                SizedBox(width: 200,),
    
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/paper_btn.png',
                          scale: 1.5,
                          ),
                      ),
                  
                      SizedBox(height: 5,), 
                      
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/images/rock_btn.png',
                          scale: 1.5,),
                      ),
                  
                      SizedBox(height: 5,),  
                      
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/scisor_btn.png',
                          scale: 1.5,),
                      ),
                    ],
                  ),
                )
    
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