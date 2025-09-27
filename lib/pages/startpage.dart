import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tic_tac_toe/pages/HomePage_twoplayer.dart';
import 'package:tic_tac_toe/pages/playwithcomputer.dart';

class Startpage extends StatelessWidget{
  const Startpage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 79, 78, 78),const Color.fromARGB(255, 39, 39, 39)],
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("TIC TAC TOE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                wordSpacing: 3,
              ),
              ),
              
              SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(HomePage());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.people_alt,size: 150,),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.grey,
                            child: Text("Two Players",
                            style:TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ),

                   SizedBox(width: 40,),
                // -----

                GestureDetector(
                  onTap: (){
                    Get.to(HomePageComp());
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.computer_outlined,size: 150,),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.grey,
                            child: Text("Play with Comp",
                            style:TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                ),
                ],
              )
            ],
        
          ),
        ),
      ),
    );
  }

  
}