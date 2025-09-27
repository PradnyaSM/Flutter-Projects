import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Practicepage extends StatefulWidget {
  const Practicepage({super.key});

  @override
  State<Practicepage> createState() => _PracticepageState();
}

class _PracticepageState extends State<Practicepage> {
      final FocusNode _focusNode = FocusNode(); // Needed for keyboard focus
    @override
    void initState() {
    super.initState();
    _focusNode.requestFocus(); // Request focus to start listening immediately
  }
  
   @override
  void dispose() {
    _focusNode.dispose(); // Dispose the focus node properly
    super.dispose();
  }

   
  String keypressed= 'a' ;
  @override
  Widget build(BuildContext context) {
    return  KeyboardListener(
    focusNode: _focusNode,
    onKeyEvent: (KeyEvent value){
         if(value is KeyDownEvent){
          setState(() {
          keypressed = value.logicalKey.keyLabel;
          });
          print("Key pressed: ${value.logicalKey.keyLabel}");
         }
    },
    child: Scaffold(
      body: Text(keypressed),
    ));
  }
}
