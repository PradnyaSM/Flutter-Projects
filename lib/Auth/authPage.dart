import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rock_paper_scissor/Auth/loginpage.dart';
import 'package:rock_paper_scissor/pages/gamepage_rockpaper.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context,snapshot){
          print("Auth state changed: ${snapshot.connectionState}, hasData: ${snapshot.hasData}");
          if(snapshot.hasData){
            return GamepageRockpaper();
          }
          else{
            return Loginpage();
          }
         }),
    );
  }
}