import 'package:flutter/material.dart';

class HomePagecopy extends StatefulWidget {
  HomePagecopy({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageStatecopy();
  }
}

List<String> displayXO = ['', '', '', '', '', '', '', '', ''];
// bool Oturn = true;
bool Xturn = false;
int ScoreX = 0;
int ScoreO = 0;
int round = 1;
List<int> winCombo = [];
Color? col;
String winner = '';

class HomePageStatecopy extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 63, 63, 63),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFCFE7F3), Color(0xFF4F6E81)],
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Round $round",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Container(
                
                width: 400,
                // padding: EdgeInsets.all(10),
              
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Player X", style: TextStyle(fontSize: 20)),
                      Text("$ScoreX"),
                    ],
                  ),
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Player O", style: TextStyle(fontSize: 20)),
                      Text("$ScoreO"),
                    ],
                  ),
                  ],
                )
              ),
                
                
              // -----------------
             

              SizedBox(height: 30),
              SizedBox(
                height: 400,
                width: 400,
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    bool inwinCombo = winCombo.contains(index);
                    return GestureDetector(
                      onTap: () {
                        onpress(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 84, 84, 84),
                          ),
                        color: (inwinCombo ? Colors.grey[200] : null), // Very light bluish-gray
                        ),
                        
                        child: Center(
                          // child: Text(index.toString(),style: TextStyle(
                          child: Text(
                            displayXO[index],
                            style: TextStyle(
                              color: col,
                              fontWeight: FontWeight.bold,
                              fontSize: 40 ,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              
              SizedBox(height: 20,),
              OutlinedButton(onPressed: (){reSet(winner);}, 
              style: OutlinedButton.styleFrom(backgroundColor: Colors.white,
              foregroundColor: const Color.fromRGBO(0, 0, 0, 1),
              ),
              child: Text("Next Round",
              style: TextStyle(color: Colors.black,
              fontSize:20),
              )),
              
            ],
          ),
        ),
      ),
      
      );
    
  }

  void onpress(int tapped) {
    setState(() {});

    if (Xturn == true && displayXO[tapped] == '') {
      displayXO[tapped] = 'X';
      col =const Color.fromRGBO(211, 47, 47, 1);

      Xturn = false;
    } else if (Xturn == false && displayXO[tapped] == '') {
      displayXO[tapped] = 'O';
      col = const Color.fromRGBO(56, 142, 60, 1);
      Xturn = true;
    }
    checkwin();
  }

  void checkwin() {
    setState(() {
    });
    if ((displayXO[0] == displayXO[1]) &&
        (displayXO[0] == displayXO[2]) &&
        (displayXO[0] != '')) {
      changeColor([0, 1, 2]);
      winner = displayXO[0];
      
     
    } else if ((displayXO[3] == displayXO[4]) &&
        (displayXO[3] == displayXO[5]) &&
        (displayXO[3] != '')) {
      changeColor([3, 4, 5]);
       winner = displayXO[3];
      
      
    } else if ((displayXO[6] == displayXO[7]) &&
        (displayXO[6] == displayXO[8]) &&
        (displayXO[6] != '')) {
      changeColor([6, 7, 8]);
       winner = displayXO[6];
     
    } else if ((displayXO[0] == displayXO[3]) &&
        (displayXO[0] == displayXO[6]) &&
        (displayXO[0] != '')) {
      changeColor([0, 3, 6]);
       winner = displayXO[0];
      
    } else if ((displayXO[1] == displayXO[4]) &&
        (displayXO[1] == displayXO[7]) &&
        (displayXO[1] != '')) {
      changeColor([1, 4, 7]);
       winner = displayXO[1];
    
    } else if ((displayXO[2] == displayXO[5]) &&
        (displayXO[2] == displayXO[8]) &&
        (displayXO[2] != '')) {
      changeColor([2, 5, 8]);
       winner = displayXO[2];
     
    } else if ((displayXO[2] == displayXO[4]) &&
        (displayXO[6] == displayXO[2]) &&
        (displayXO[2] != '')) {
      changeColor([2, 4, 6]);
       winner = displayXO[2];
     
    } else if ((displayXO[0] == displayXO[4]) &&
        (displayXO[0] == displayXO[8]) &&
        (displayXO[0] != '')) {
      changeColor([0, 4, 8]);
       winner = displayXO[0];
      
    } else if (!displayXO.contains('')) {
      reSet('none');
    }
  }

  void changeColor(List<int> winline) {
    setState(() {
      winCombo = winline;
    });
  }
  

  void reSet(String winner) {
    if (round <= 3) {
      setState(() {});
      if (winner == 'X') {
        ScoreX++;
      } else if (winner == 'O') {
        ScoreO++;
      }

      for (int i = 0; i < 9; i++) {
        displayXO[i] = '';
      }
      winCombo = [];
      round++;
      winner = '';
    } 
    if(round==4) {
      showDilogueBox(
        ScoreX > ScoreO
            ? 'X'
            : ScoreX < ScoreO
            ? 'O'
            : 'Tie',
      );
    }
  }

  void showDilogueBox(String winner) {
    showDialog(
      context: context,
      barrierDismissible: false, //won't remove diloguebox even after clicking
      builder:
          (context) => AlertDialog(
            title: Text("$winner won"),
            content: OutlinedButton(
              onPressed: () {
                setState(() {
                  for (int i = 0; i < 9; i++) {
                    displayXO[i] = '';
                  }
                  winCombo = [];
                  Xturn = false;
                  ScoreX = 0;
                  ScoreO = 0;
                  round = 1;
                  Navigator.of(context).pop();
                });
              },
              child: Text("Play Again"),
            ),
          ),
    );
  }
}
