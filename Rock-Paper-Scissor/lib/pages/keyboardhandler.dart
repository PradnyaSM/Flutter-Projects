import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rock_paper_scissor/pages/gamepage_rockpaper.dart';
import 'package:rock_paper_scissor/pages/resultPage.dart';

class Keyboardhandler extends StatefulWidget {
  const Keyboardhandler({super.key});

  @override
  State<Keyboardhandler> createState() => _KeyboardhandlerState();
}

class _KeyboardhandlerState extends State<Keyboardhandler> {
  
    // 1)create final focousnode
  final FocusNode _focousnode = FocusNode();
  // 2)init state for requesting focous
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Schedule focus after the first frame
  WidgetsBinding.instance.addPostFrameCallback((_) {
    _focousnode.requestFocus();
  });
    
  }
// 3) dispose focousnode
  @override
  void dispose() {
    // TODO: implement dispose
    _focousnode.dispose();
    super.dispose();
  }

  String keyplayer1 ='o';
  String keyplayer2 ='o';
 
  void displayResult(String a, String b){
    String winner = 'Draw';
    winner = getwinner(keyplayer1,keyplayer2);

    Navigator.push(context,
     MaterialPageRoute(builder: (context){
          return Resultpage(winner: winner,Player1: keyplayer1,Player2: keyplayer2);
     })
     );

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

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      autofocus: true,
      focusNode: _focousnode,
      onKeyEvent: (KeyEvent event) {
        if(event is KeyDownEvent){
          if(event.logicalKey.keyLabel=='a'||event.logicalKey.keyLabel=='s'||event.logicalKey.keyLabel=='d'){
          setState(() {
          keyplayer1 = event.logicalKey.keyLabel;
          });
          print(event.logicalKey.keyLabel);
          }
          else if(event.logicalKey.keyLabel=='j'||event.logicalKey.keyLabel=='k'||event.logicalKey.keyLabel=='l'){
          setState(() {
          keyplayer2 = event.logicalKey.keyLabel;
          });
          print(event.logicalKey.keyLabel);
          }
        }
        
        if(keyplayer1!='o'&&keyplayer2!='o'){

        displayResult(keyplayer1,keyplayer2);
        }
        
      },

      child:GamepageRockpaper());
  }
}