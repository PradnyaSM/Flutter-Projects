import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:tic_tac_toe/pages/HomePage_twoplayer%20copy.dart';
// import 'package:tic_tac_toe/pages/HomePage_twoplayer.dart';
import 'package:tic_tac_toe/pages/startpage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Startpage(),
      // home: HomePagecopy(),
    );
  }
}

