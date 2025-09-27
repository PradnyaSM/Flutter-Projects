// import 'package:currency_convertor/currency_converter_material_page.dart';
import 'package:currency_convertor/currency_convertor_material_page_stateful.dart';
import 'package:currency_convertor/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


// void main(){
//   runApp( Text(
//         'Hello Flutter!!!',
//         textDirection: TextDirection.rtl,

//       ));
// }
void main() async{
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


//1.Material design--design system created by google--rules for designing
//2.cupertino design--design system created by apple

// -------------------------1----------------------------------------------------
// class MyApp extends StatelessWidget{

//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//       return const Text(
//         'Hello Flutter!!!',
//         textDirection: TextDirection.rtl,

//       ) ;
//   }
// }
// ---------------------------------2------------------------------------------------

// class MyApp extends StatelessWidget{
//      const MyApp({super.key});

//      @override
//      Widget build(BuildContext context){
//       return MaterialApp(
//         // home:Text('Hello World!!!!'), // here we don;t need to pass direction//-----1

//         home: Scaffold(
//           // body: Text('Hello World!!!'),// text is in corner---2

//           body:Center(
//             child:Text('Hello World!!'),
//         )
//         )
//       );
//      }

// }

// ------------------------------3--------------
/* material app can have lot of configurations done inside it, so lets put Scaffold in different file,like
// we did to MyApp*/

class MyApp extends StatelessWidget{
     const MyApp({super.key});

     @override
     Widget build(BuildContext context){
      return const  MaterialApp(
        // home:Text('Hello World!!!!'), // here we don;t need to pass direction//-----1
        home: CurrencyConverterMaterialPage(),
      );
     }

}
