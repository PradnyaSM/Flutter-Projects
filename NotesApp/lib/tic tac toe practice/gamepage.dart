import 'package:flutter/material.dart';

class Gamepage extends StatefulWidget {
  const Gamepage({super.key});
 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GamepageState();
  }
}

class GamepageState extends State {

  List<String> moves = ['','','','','','','','',''];
  bool Xturn = true;
  Color? boxColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromRGBO(38, 50, 56, 1),
              const Color.fromRGBO(55, 71, 79, 1),
              const Color.fromRGBO(69, 90, 100, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 400,
                width: 400,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemCount: 9,

                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _onTap(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          
                          border: Border.all(color: Colors.orangeAccent),
                        ),
                        child: Center(
                          child: Text(moves[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            
                          ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTap(int index){
    if(Xturn==true && moves[index]==''){
      setState(() {
      });
      moves[index]='X';
      Xturn = false;
      
    }
    else if(Xturn==false && moves[index]==''){
      setState(() {
      });
      moves[index] = 'O';
      Xturn= true;
      
    }
    checkWin();

  }

  checkWin(){
    if(moves[0]==moves[1] && moves[0]==moves[2]&& moves[0]!=''){
      changeColor([0,1,2]);
      Future.delayed(Duration(milliseconds: 20),(){
      reset(); 
      });
    }
    else if(moves[3]==moves[4] && moves[3]==moves[5]&& moves[3]!=''){
      changeColor([3,4,5]);
      Future.delayed(Duration(milliseconds: 20),(){
      reset(); 
      });
    }
    else if(moves[6]==moves[7] && moves[6]==moves[8]&& moves[6]!=''){
      changeColor([6,7,8]);
      Future.delayed(Duration(milliseconds: 20),(){
      reset(); 
      });
    }
    else if(moves[0]==moves[3] && moves[0]==moves[6]&& moves[0]!=''){
      changeColor([0,6,3]);
      Future.delayed(Duration(milliseconds: 40),(){
      reset(); 
      });
    }
    else if(moves[1]==moves[4] && moves[1]==moves[7]&& moves[1]!=''){
      changeColor([1,4,7]);
      Future.delayed(Duration(milliseconds: 20),(){
      reset(); 
      });
    }
    else if(moves[2]==moves[5] && moves[2]==moves[8]&& moves[2]!=''){
      changeColor([2,5,8]);
      Future.delayed(Duration(milliseconds: 20),(){
      reset(); 
      });
    }
    else if(moves[0]==moves[4] && moves[0]==moves[8]&& moves[0]!=''){
      changeColor([0,4,8]);
      Future.delayed(Duration(milliseconds: 20),(){
      reset(); 
      });
    }
    else if(moves[2]==moves[4] && moves[2]==moves[6]&& moves[2]!=''){
      changeColor([2,4,6]);
      Future.delayed(Duration(milliseconds: 20),(){
      reset(); 
      });
    }
  }

  void reset(){
    setState(() {
    Xturn = true;
    for(int i=0;i<moves.length;i++){
      moves[i]='';
    }
    boxColor= null;
    });
  }

  void changeColor(List<int>win){
     setState(() {
       boxColor = Colors.orangeAccent;
     });
  }
}
