import 'package:flutter/material.dart';

class ResultDilogue extends StatelessWidget{
  const ResultDilogue({super.key,required this.whowon,required this.reset});

  final String whowon;
  final VoidCallback reset;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Color.fromRGBO(15,32,39,1),
      backgroundColor: Colors.orangeAccent,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              border: Border.all(color: Color.fromRGBO(15,32,39,1),width: 3),
              borderRadius: BorderRadius.circular(15),

            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("$whowon won!",
              
              style: TextStyle(
                fontSize: 40,
                color: Color.fromRGBO(15,32,39,1),
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
               ),
            ),
          ),
        SizedBox(height: 30,),

        TextButton(
          onPressed: reset,
          style: ButtonStyle(
            backgroundColor:WidgetStatePropertyAll(Color.fromARGB(33, 0, 0, 0)),
            padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(side:BorderSide(color: Color.fromRGBO(15,32,39,1)))),

          ),
          child: Text("play again",
          style: TextStyle(
            fontSize: 20,
                  color: Color.fromRGBO(237, 240, 242, 1),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
          ),
          ),
        )

        ],
      ),
    );
    
  }
}