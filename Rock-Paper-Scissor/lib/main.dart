import 'package:flutter/material.dart';
import 'package:rock_paper_scissor/Auth/authPage.dart';
import 'package:rock_paper_scissor/newgame/game.dart';
import 'package:rock_paper_scissor/pages/gamepage_rockpaper%20copy.dart';
import 'package:rock_paper_scissor/pages/gamepage_rockpaper.dart';
import 'package:rock_paper_scissor/pages/keyboardhandler.dart';
import 'package:rock_paper_scissor/pages/practicepage.dart';
import 'package:rock_paper_scissor/pages/resultPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: GamepageRockpaper(),
      home: GamepageRockpapercopy(),
      // home: Resultpage(),
      // home: Keyboardhandler(),
      // home: Practicepage(),
      // home: Authpage(),
      // home: Game(),
    );
    
  }
}