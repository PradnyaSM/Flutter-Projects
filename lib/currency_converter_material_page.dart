// import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// class CurrencyConverterMaterialPage extends StatelessWidget{
//   const CurrencyConverterMaterialPage({super.key});


// 1---------------------------------display hello world----------------------
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return const Scaffold(
  //         // body: Text('Hello World!!!'),// text is in corner
  //         body:Center(
  //           child:Text('Hello World!!'),
  //       ),
  //       );

// 2---------------------------display app interface--------------
      // @override
      // Widget build(BuildContext context){
      //   return  Scaffold(
      //     body:Center(
      //       child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center, // now that we have alligned it at center--can remove widget cemter
      //       children: [Text('Hello')],
      //     )
      //     )
      //   );

      // }

// --------------------------------------------------------------------
      
      //   @override
      // Widget build(BuildContext context){
      //   return  Scaffold(
      //     body:
      //       Column(
      //       mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [Text('Hello')],
      //     )
          
      //   );

      // }
      
      
      // --------------------------------------------color to column-------------------
      // @override
      // Widget build(BuildContext context){
      //   return  Scaffold(
      //     body:Center( child: ColoredBox(color: Color.fromRGBO(255,0,0,1),
      //       child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
      //       crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
      //       children: [Text('0')],
      //     )
      //     ),),
           
          
      //   );
      //   }

      // ----------------------------------------------------------------------------------------------------------------------------
      // @override
      // Widget build(BuildContext context){
      //   return  Scaffold(
      //     // backgroundColor: Color.fromARGB(111, 1, 1, 0),
      //     backgroundColor: Colors.blue[200],
      //     body:Center( child: Column(
      //                         mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
      //                         crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
      //                         children: [Text('0',
      //                                         style: TextStyle(
      //                                           fontSize: 30,
      //                                           fontWeight: FontWeight.bold,
      //                                           // color: Color.fromRGBO(0, 255, 0, 1),
      //                                           color: Colors.deepOrangeAccent,
      //                                         ),
      //                                         ),
      //                                     TextField(),    ], // allow to accept user input
                              
      //                               ),
      //                 ),
           
          
      //   );
      //   }

        // ------------------------------------------------------------------------------------------------------------------------------------------------------


//       @override
//       Widget build(BuildContext context){
//         return   Scaffold(
//           // backgroundColor: Color.fromARGB(111, 1, 1, 0),
//           backgroundColor: Colors.blue[200],
//           body:Center(child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
//                               crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
//                               children: [const Text('0',
//                                               style: TextStyle(
//                                                 fontSize: 30,
//                                                 fontWeight: FontWeight.bold,
//                                                 // color: Color.fromRGBO(0, 255, 0, 1),
//                                                 color: Colors.deepOrangeAccent,
//                                               ),
//                                               ),
//                                           TextField(
//                                             style: const TextStyle(
//                                               color: Colors.deepOrange, // textstyle is always related to text(not feild)
//                                             ),
//                                             decoration:    InputDecoration(
//                                               // label: Text("PLease enter the amount in INR"),
//                                               // label: Text("PLease enter the amount in INR",style: TextStyle(color: Colors.deepPurple),),
//                                               // for label, you can pass any widget
//                                               labelText: "PLease enter the amount in USD:",
//                                               // labelStyle: TextStyle(color: Colors.green),
//                                               // prefixText: 'hello',//try--
                                              
//                                               prefixIcon: Icon(Icons.attach_money),
//                                               prefixIconColor: Colors.deepOrange,
//                                               filled: true,
//                                               fillColor: Colors.amber,
//                                               // -----------------------------1---------------------------------------------
//                                               focusedBorder: OutlineInputBorder(
//                                                 borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                               // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                               // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               borderRadius: BorderRadius.circular(40),

                                              
//                                               ),
//                                               // ------------------------------------------------2----------------------------------------
//                                               //---before focousing on text feild
//                                               enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid),
//                                               // borderRadius: BorderRadius.all(Radius.circular(20)) //try
//                                               // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               borderRadius: BorderRadius.circular(40),),

//                                               // ----------------------
//                                               // due to border, widget has became too big, save it in a variable--10:46:19


//                                             ),
//                                           ),    ], // allow to accept user input
                              
//                                     ),
//                       ),
           
          
//         );
//         }

// }

// ------------------------------------------------------------------------------------------------------------------

//       @override
//       Widget build(BuildContext context){
//         final border = OutlineInputBorder(
//                                                 borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                               // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                               // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               borderRadius: BorderRadius.circular(40),);


//         return   Scaffold(
//           // backgroundColor: Color.fromARGB(111, 1, 1, 0),
//           backgroundColor: Colors.blue[200],
//           body:Center(child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
//                               crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
//                               children: [const Text('0',
//                                               style: TextStyle(
//                                                 fontSize: 30,
//                                                 fontWeight: FontWeight.bold,
//                                                 // color: Color.fromRGBO(0, 255, 0, 1),
//                                                 color: Colors.deepOrangeAccent,
//                                               ),
//                                               ),
//                                           TextField(
//                                             style: const TextStyle(
//                                               color: Colors.deepOrange, // textstyle is always related to text(not feild)
//                                             ),
//                                             decoration:    InputDecoration(
//                                               // label: Text("PLease enter the amount in INR"),
//                                               // label: Text("PLease enter the amount in INR",style: TextStyle(color: Colors.deepPurple),),
//                                               // for label, you can pass any widget
//                                               labelText: "PLease enter the amount in USD:",
//                                               // labelStyle: TextStyle(color: Colors.green),
//                                               // prefixText: 'hello',//try--
                                              
//                                               prefixIcon: Icon(Icons.attach_money),
//                                               prefixIconColor: Colors.deepOrange,
//                                               filled: true,
//                                               fillColor: Colors.amber,
//                                               // -----------------------------1---------------------------------------------
//                                               // focusedBorder: OutlineInputBorder(
//                                               //   borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                               // // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                               // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               // borderRadius: BorderRadius.circular(40),

//                                               focusedBorder: border,

//                                               // ------------------------------------------------2----------------------------------------
//                                               //---before focousing on text feild
//                                               // enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid),
//                                               // // borderRadius: BorderRadius.all(Radius.circular(20)) //try
//                                               // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               // borderRadius: BorderRadius.circular(40),),

//                                               enabledBorder: border,

//                                               // ----------------------
//                                               // due to border, widget has became too big, save it in a variable--10:46:19
                                             
//                                               ),
//                                               keyboardType: const TextInputType.numberWithOptions(decimal:  true, signed: true), // keyboard will only show num
                                            


//                                             ),
                                               
//                                              ], // allow to accept user input
//                                     ),
//                       ),
//         );
//         }

// }

// -----------------------------------------------------------------------wrap text feild in padding widget---------------------------------------------------------------
// // cntrl+shift+R ---wrap
//       @override
//       Widget build(BuildContext context){
//         final border = OutlineInputBorder(
//                                                 borderSide: const BorderSide(color:  Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                               // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                               // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               borderRadius: BorderRadius.circular(40),);


//         return   Scaffold(
//           // backgroundColor: Color.fromARGB(111, 1, 1, 0),
//           backgroundColor: Colors.blue[200],
//           body:Center(child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
//                               crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
//                               children: [const Text('0',
//                                               style: TextStyle(
//                                                 fontSize: 30,
//                                                 fontWeight: FontWeight.bold,
//                                                 // color: Color.fromRGBO(0, 255, 0, 1),
//                                                 color: Colors.deepOrangeAccent,
//                                               ),
//                                               ),
//                                           Padding(
//                                             padding: const EdgeInsets.all(10.0),
//                                             // padding : const EdgeInsets.only(),
//                                             // padding : const EdgeInsets.only(left: 50),
//                                             // padding : const EdgeInsets.fromLTRB(20,20,20,20),
//                                             child: TextField(
//                                               style: const TextStyle(
//                                                 color: Colors.deepOrange, // textstyle is always related to text(not feild)
//                                               ),
//                                               decoration:    InputDecoration(
//                                                 // label: Text("PLease enter the amount in INR"),
//                                                 // label: Text("PLease enter the amount in INR",style: TextStyle(color: Colors.deepPurple),),
//                                                 // for label, you can pass any widget
//                                                 labelText: "PLease enter the amount in USD:",
//                                                 // labelStyle: TextStyle(color: Colors.green),
//                                                 // prefixText: 'hello',//try--
                                                
//                                                 prefixIcon: Icon(Icons.attach_money),
//                                                 prefixIconColor: Colors.deepOrange,
//                                                 filled: true,
//                                                 fillColor: Colors.amber,
//                                                 // -----------------------------1---------------------------------------------
//                                                 // focusedBorder: OutlineInputBorder(
//                                                 //   borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                                 // // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                                 // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                                 // borderRadius: BorderRadius.circular(40),
                                            
//                                                 focusedBorder: border,
                                            
//                                                 // ------------------------------------------------2----------------------------------------
//                                                 //---before focousing on text feild
//                                                 // enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid),
//                                                 // // borderRadius: BorderRadius.all(Radius.circular(20)) //try
//                                                 // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                                 // borderRadius: BorderRadius.circular(40),),
                                            
//                                                 enabledBorder: border,
                                            
//                                                 // ----------------------
//                                                 // due to border, widget has became too big, save it in a variable--10:46:19
                                               
//                                                 ),
//                                                 keyboardType: const TextInputType.numberWithOptions(decimal:  true, signed: true), // keyboard will only show num
                                              
                                            
                                            
//                                               ),
//                                           ),
                                               
//                                              ], // allow to accept user input
//                                     ),
//                       ),
//         );
//         }

// }


// ----------------------------------------insted of padding , you can also go for container---------------------------------------------------------------------11:01:00------------
// -------lets use container to wrap  text

//       @override
//       Widget build(BuildContext context){
//         final border = OutlineInputBorder(
//                                                 borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                               // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                               // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               borderRadius: BorderRadius.circular(40),);


//         return   Scaffold(
//           // backgroundColor: Color.fromARGB(111, 1, 1, 0),
//           backgroundColor: const Color.fromARGB(255, 248, 248, 248),
//           body:Center(child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
//                               crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
//                               children: [Container(
//                                 padding: EdgeInsets.all(10), // try changing value //container doesn't take whole width like textfeild only as much as required by child--try reducing font size of text
//                                 margin: EdgeInsets.all(50),
//                                 color: const Color.fromARGB(168, 230, 23, 23),
//                                 // we can set height , width of container
//                                 // height: ,
//                                 // width: ,

//                                 child: const Text('0',
//                                                 style: TextStyle(
//                                                   fontSize: 30,
//                                                   fontWeight: FontWeight.bold,
//                                                   // color: Color.fromRGBO(0, 255, 0, 1),
//                                                   color: Color.fromARGB(255, 16, 2, 1),
//                                                 ),
//                                                 ),
//                               ),
//                                           Padding(
//                                             padding: const EdgeInsets.all(10.0),
//                                             // padding : const EdgeInsets.only(),
//                                             // padding : const EdgeInsets.only(left: 50),
//                                             // padding : const EdgeInsets.fromLTRB(20,20,20,20),
//                                             child: TextField(
//                                               style: const TextStyle(
//                                                 color: Colors.deepOrange, // textstyle is always related to text(not feild)
//                                               ),
//                                               decoration:    InputDecoration(
//                                                 // label: Text("PLease enter the amount in INR"),
//                                                 // label: Text("PLease enter the amount in INR",style: TextStyle(color: Colors.deepPurple),),
//                                                 // for label, you can pass any widget
//                                                 labelText: "PLease enter the amount in USD:",
//                                                 // labelStyle: TextStyle(color: Colors.green),
//                                                 // prefixText: 'hello',//try--
                                                
//                                                 prefixIcon: Icon(Icons.attach_money),
//                                                 prefixIconColor: Colors.deepOrange,
//                                                 filled: true,
//                                                 fillColor: Colors.amber,
//                                                 // -----------------------------1---------------------------------------------
//                                                 // focusedBorder: OutlineInputBorder(
//                                                 //   borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                                 // // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                                 // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                                 // borderRadius: BorderRadius.circular(40),
                                            
//                                                 focusedBorder: border,
                                            
//                                                 // ------------------------------------------------2----------------------------------------
//                                                 //---before focousing on text feild
//                                                 // enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid),
//                                                 // // borderRadius: BorderRadius.all(Radius.circular(20)) //try
//                                                 // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                                 // borderRadius: BorderRadius.circular(40),),
                                            
//                                                 enabledBorder: border,
                                            
//                                                 // ----------------------
//                                                 // due to border, widget has became too big, save it in a variable--10:46:19
                                               
//                                                 ),
//                                                 keyboardType: const TextInputType.numberWithOptions(decimal:  true, signed: true), // keyboard will only show num
                                              
                                            
                                            
//                                               ), // allow to accept user input
//                                           ),
//                                           // ------------------------------------------------------------------------
//                                           // buttons --1)raised(elavated)    2) appear like a text
//                                           // TextButton(onPressed: (){}, child: Text('Click me'),),
//                                           // // -----------------------------------------------------------------
//                                           // TextButton(onPressed: (){
//                                           //   // debugPrint("Button clicked"); //will be printed in debug console//--way 1--
//                                           //   if(kDebugMode){print("Button clicked");}

//                                           // }, child: Text('Click me'),),
//                                           // //------------------------------------------------------------------- 

//                                           Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: TextButton(onPressed: (){}, 

//                                                     // style: const ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 232, 60, 118)) ,
//                                                     //     foregroundColor: WidgetStatePropertyAll(Colors.black),
//                                                     // //  textStyle: WidgetStatePropertyAll(TextStyle( color: Colors.black,fontWeight: FontWeight.bold,),//howver over textstyle--color
//                                                     //     // fixedSize: WidgetStatePropertyAll(Size(1020, 50))   //on diff devices it will look diff ,
//                                                     //     // fixedSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
//                                                     //     // minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
//                                                     //     // maxmumSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
//                                                     //                 ),
                                                     
//                                                     //  here we have to mention widgetststesll every time, insted we can do:

//                                                     style: TextButton.styleFrom(
//                                                       backgroundColor: Colors.pink,
//                                                       foregroundColor: const Color.fromARGB(255, 4, 48, 125),
//                                                       shape:RoundedRectangleBorder(side :BorderSide(width: 2),borderRadius:BorderRadius.all(Radius.zero) ),
                                                      

//                                                     ),
                                                            



//                                                     child: Text("Convert"),
                                                              
//                                                     ),
//                                           )  

//                                              ],
//                                     ),
//                       ),
//         );
//         }

// }
// // there are three modes- debug --testing, adding new features, release--how ur app will look like in production ,not showing error msg --
// //profile -- mix of debug nd release  


// /______________________________________________elavated button(shadow)_____________________________________________
// /
//       @override
//       Widget build(BuildContext context){
//         final border = OutlineInputBorder(
//                                                 borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                               // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                               // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               borderRadius: BorderRadius.circular(40),);


//         return   Scaffold(
//           // backgroundColor: Color.fromARGB(111, 1, 1, 0),
//           backgroundColor: const Color.fromARGB(255, 248, 248, 248),
//           body:Center(child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
//                               crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
//                               children: [Container(
//                                 padding: EdgeInsets.all(10), // try changing value //container doesn't take whole width like textfeild only as much as required by child--try reducing font size of text
//                                 margin: EdgeInsets.all(50),
//                                 color: const Color.fromARGB(168, 230, 23, 23),
//                                 // we can set height , width of container
//                                 // height: ,
//                                 // width: ,

//                                 child: const Text('0',
//                                                 style: TextStyle(
//                                                   fontSize: 30,
//                                                   fontWeight: FontWeight.bold,
//                                                   // color: Color.fromRGBO(0, 255, 0, 1),
//                                                   color: Color.fromARGB(255, 16, 2, 1),
//                                                 ),
//                                                 ),
//                               ),
//                                           Padding(
//                                             padding: const EdgeInsets.all(10.0),
//                                             // padding : const EdgeInsets.only(),
//                                             // padding : const EdgeInsets.only(left: 50),
//                                             // padding : const EdgeInsets.fromLTRB(20,20,20,20),
//                                             child: TextField(
//                                               style: const TextStyle(
//                                                 color: Colors.deepOrange, // textstyle is always related to text(not feild)
//                                               ),
//                                               decoration:    InputDecoration(
//                                                 // label: Text("PLease enter the amount in INR"),
//                                                 // label: Text("PLease enter the amount in INR",style: TextStyle(color: Colors.deepPurple),),
//                                                 // for label, you can pass any widget
//                                                 labelText: "PLease enter the amount in USD:",
//                                                 // labelStyle: TextStyle(color: Colors.green),
//                                                 // prefixText: 'hello',//try--
                                                
//                                                 prefixIcon: Icon(Icons.attach_money),
//                                                 prefixIconColor: Colors.deepOrange,
//                                                 filled: true,
//                                                 fillColor: Colors.amber,
//                                                 // -----------------------------1---------------------------------------------
//                                                 // focusedBorder: OutlineInputBorder(
//                                                 //   borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                                 // // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                                 // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                                 // borderRadius: BorderRadius.circular(40),
                                            
//                                                 focusedBorder: border,
                                            
//                                                 // ------------------------------------------------2----------------------------------------
//                                                 //---before focousing on text feild
//                                                 // enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid),
//                                                 // // borderRadius: BorderRadius.all(Radius.circular(20)) //try
//                                                 // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                                 // borderRadius: BorderRadius.circular(40),),
                                            
//                                                 enabledBorder: border,
                                            
//                                                 // ----------------------
//                                                 // due to border, widget has became too big, save it in a variable--10:46:19
                                               
//                                                 ),
//                                                 keyboardType: const TextInputType.numberWithOptions(decimal:  true, signed: true), // keyboard will only show num
                                              
                                            
                                            
//                                               ), // allow to accept user input
//                                           ),
//                                           // ------------------------------------------------------------------------
//                                           // buttons --1)raised    2) appear like a text
//                                           // TextButton(onPressed: (){}, child: Text('Click me'),),
//                                           // // -----------------------------------------------------------------
//                                           // TextButton(onPressed: (){
//                                           //   // debugPrint("Button clicked"); //will be printed in debug console//--way 1--
//                                           //   if(kDebugMode){print("Button clicked");}

//                                           // }, child: Text('Click me'),),
//                                           // //------------------------------------------------------------------- 

//                                           Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: ElevatedButton(onPressed: (){}, 
//                                                     style: const ButtonStyle(
//                                                       backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 232, 60, 118)) ,
//                                                         foregroundColor: WidgetStatePropertyAll(Colors.black),
//                                                     //  textStyle: WidgetStatePropertyAll(TextStyle( color: Colors.black,fontWeight: FontWeight.bold,),//howver over textstyle--color
//                                                         // fixedSize: WidgetStatePropertyAll(Size(1020, 50))   //on diff devices it will look diff ,
//                                                         // fixedSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
//                                                         // minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
//                                                         // maxmumSize: WidgetStatePropertyAll(Size(double.infinity, 50))  
//                                                         //
                                                            
//                                                             shape:  WidgetStatePropertyAll(RoundedRectangleBorder())

//                                                                    ),

//                                                     // style : ElevatedButton.styleFrom()               
                                                      
//                                                     child: Text("Convert"),
//                                                     // child: Icon(Icons.money),
                                                    
                                                              
//                                                     ),
//                                           )  

//                                              ],
//                                     ),
//                       ),
//         );
//         }

// }

// ---------------------------------------------------------------- add app bar( header of an app)-------------------------------------------------------------------------
// we have to add appbar in scaffold

//       @override
//       Widget build(BuildContext context){
//         final border = OutlineInputBorder(
//                                                 borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                               // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                               // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                               // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                               borderRadius: BorderRadius.circular(40),);


//         return   Scaffold(
//           // backgroundColor: Color.fromARGB(111, 1, 1, 0),
//           backgroundColor: const Color.fromARGB(255, 248, 248, 248),

//           appBar: AppBar(
//             backgroundColor: Color.fromARGB(255, 248, 248, 248) ,
//             elevation :2,
//             title: const Text("Currency Convertor"),
//             // centerTitle: true,
//             actions: [
//               // Text("Hello"),
//               IconButton(onPressed: (){debugPrint("Time");}, icon: Icon(Icons.access_time)),
//             ],// action contains list of widgets
//             leading:Icon(Icons.ac_unit_sharp) , //contains only one widget
//           ),

//           body:Center(child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
//                               crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
//                               children: [Container(
//                                 padding: EdgeInsets.all(10), // try changing value //container doesn't take whole width like textfeild only as much as required by child--try reducing font size of text
//                                 margin: EdgeInsets.all(50),
//                                 color: const Color.fromARGB(168, 230, 23, 23),
//                                 // we can set height , width of container
//                                 // height: ,
//                                 // width: ,

//                                 child: const Text('0',
//                                                 style: TextStyle(
//                                                   fontSize: 30,
//                                                   fontWeight: FontWeight.bold,
//                                                   // color: Color.fromRGBO(0, 255, 0, 1),
//                                                   color: Color.fromARGB(255, 16, 2, 1),
//                                                 ),
//                                                 ),
//                               ),
//                                           Padding(
//                                             padding: const EdgeInsets.all(10.0),
//                                             // padding : const EdgeInsets.only(),
//                                             // padding : const EdgeInsets.only(left: 50),
//                                             // padding : const EdgeInsets.fromLTRB(20,20,20,20),
//                                             child: TextField(
//                                               style: const TextStyle(
//                                                 color: Colors.deepOrange, // textstyle is always related to text(not feild)
//                                               ),
//                                               decoration:    InputDecoration(
//                                                 // label: Text("PLease enter the amount in INR"),
//                                                 // label: Text("PLease enter the amount in INR",style: TextStyle(color: Colors.deepPurple),),
//                                                 // for label, you can pass any widget
//                                                 labelText: "PLease enter the amount in USD:",
//                                                 // labelStyle: TextStyle(color: Colors.green),
//                                                 // prefixText: 'hello',//try--
                                                
//                                                 prefixIcon: Icon(Icons.attach_money),
//                                                 prefixIconColor: Colors.deepOrange,
//                                                 filled: true,
//                                                 fillColor: Colors.amber,
//                                                 // -----------------------------1---------------------------------------------
//                                                 // focusedBorder: OutlineInputBorder(
//                                                 //   borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
//                                                 // // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
//                                                 // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                                 // borderRadius: BorderRadius.circular(40),
                                            
//                                                 focusedBorder: border,
                                            
//                                                 // ------------------------------------------------2----------------------------------------
//                                                 //---before focousing on text feild
//                                                 // enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid),
//                                                 // // borderRadius: BorderRadius.all(Radius.circular(20)) //try
//                                                 // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
//                                                 // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
//                                                 // borderRadius: BorderRadius.circular(40),),
                                            
//                                                 enabledBorder: border,
                                            
//                                                 // ----------------------
//                                                 // due to border, widget has became too big, save it in a variable--10:46:19
                                               
//                                                 ),
//                                                 keyboardType: const TextInputType.numberWithOptions(decimal:  true, signed: true), // keyboard will only show num
                                              
                                            
                                            
//                                               ), // allow to accept user input
//                                           ),
//                                           // ------------------------------------------------------------------------
//                                           // buttons --1)raised    2) appear like a text
//                                           // TextButton(onPressed: (){}, child: Text('Click me'),),
//                                           // // -----------------------------------------------------------------
//                                           // TextButton(onPressed: (){
//                                           //   // debugPrint("Button clicked"); //will be printed in debug console//--way 1--
//                                           //   if(kDebugMode){print("Button clicked");}

//                                           // }, child: Text('Click me'),),
//                                           // //------------------------------------------------------------------- 

//                                           Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: ElevatedButton(onPressed: (){}, 
//                                                     style: const ButtonStyle(
//                                                       backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 232, 60, 118)) ,
//                                                         foregroundColor: WidgetStatePropertyAll(Colors.black),
//                                                     //  textStyle: WidgetStatePropertyAll(TextStyle( color: Colors.black,fontWeight: FontWeight.bold,),//howver over textstyle--color
//                                                         // fixedSize: WidgetStatePropertyAll(Size(1020, 50))   //on diff devices it will look diff ,
//                                                         // fixedSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
//                                                         // minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
//                                                         // maxmumSize: WidgetStatePropertyAll(Size(double.infinity, 50))  
//                                                         //
                                                            
//                                                             shape:  WidgetStatePropertyAll(RoundedRectangleBorder())

//                                                                    ),

//                                                     // style : ElevatedButton.styleFrom()               
                                                      
//                                                     child: Text("Convert"),
//                                                     // child: Icon(Icons.money),
                                                    
                                                              
//                                                     ),
//                                           )  

//                                              ],
//                                     ),
//                       ),
//         );
//         }

// }

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------


// now UI is ready, lets make app function 
/* 1. create variable that stores converted value
   2.create fun
   3.store the value in created variable
   4.display the variable - insted of text(0)
   11:51:00
*/ 
// any feild in stateless widget can't change
// check change in textfeild, convert button,scaffold body - text
//


// ----------------------------------------------------------------------------------
// class CurrencyConverterMaterialPage  extends StatefulWidget{
//   const CurrencyConverterMaterialPage({super.key});
//   @override
//   // State createState() => State(); 12:10:00
//   State createState() => _currencyConvertorMaterialPageSate();
// }

// class _currencyConvertorMaterialPageSate extends State{
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(); 
//   }

// }
// ----------------------------------------------------------------------------------

class CurrencyConverterMaterialPagee extends StatelessWidget{
  const CurrencyConverterMaterialPagee({super.key});


      
      // int result = 0; //try


      @override
      Widget build(BuildContext context){
         double result = 0.0;

         TextEditingController textEditingController = TextEditingController();

        final border = OutlineInputBorder(
                                                borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
                                              // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
                                              // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
                                              // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
                                              // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
                                              borderRadius: BorderRadius.circular(40),);


        return   Scaffold(
          // backgroundColor: Color.fromARGB(111, 1, 1, 0),
          backgroundColor: const Color.fromARGB(255, 248, 248, 248),

          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 248, 248, 248) ,
            elevation :2,
            title: const Text("Currency Convertor"),
            // centerTitle: true,
            actions: [
              // Text("Hello"),
              IconButton(onPressed: (){debugPrint("Time");}, icon: Icon(Icons.access_time)),
            ],// action contains list of widgets
            leading:Icon(Icons.ac_unit_sharp) , //contains only one widget
          ),

          body:Center(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // center widget had centered the column--now column is at the begining--add crossaxisallign
                              crossAxisAlignment: CrossAxisAlignment.center,//still can't allign to center-- use center--remove center nd see
                              children: [Container(
                                padding: EdgeInsets.all(10), // try changing value //container doesn't take whole width like textfeild only as much as required by child--try reducing font size of text
                                margin: EdgeInsets.all(50),
                                color: const Color.fromARGB(168, 230, 23, 23),
                                // we can set height , width of container
                                // height: ,
                                // width: ,

                                child:  Text(result.toString(),
                                              // "INR ${result}",
                                                style: const TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  // color: Color.fromRGBO(0, 255, 0, 1),
                                                  color: Color.fromARGB(255, 16, 2, 1),
                                                ),
                                                ),
                              ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            // padding : const EdgeInsets.only(),
                                            // padding : const EdgeInsets.only(left: 50),
                                            // padding : const EdgeInsets.fromLTRB(20,20,20,20),
                                            child: TextField(
                                              style: const TextStyle(
                                                color: Colors.deepOrange, // textstyle is always related to text(not feild)
                                              ),
                                              decoration:    InputDecoration(
                                                // label: Text("PLease enter the amount in INR"),
                                                // label: Text("PLease enter the amount in INR",style: TextStyle(color: Colors.deepPurple),),
                                                // for label, you can pass any widget
                                                labelText: "PLease enter the amount in USD:",
                                                // labelStyle: TextStyle(color: Colors.green),
                                                // prefixText: 'hello',//try--
                                                
                                                prefixIcon: Icon(Icons.attach_money),
                                                prefixIconColor: Colors.deepOrange,
                                                filled: true,
                                                fillColor: Colors.amber,
                                                // -----------------------------1---------------------------------------------
                                                // focusedBorder: OutlineInputBorder(
                                                //   borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),//10:33:32
                                                // // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
                                                // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
                                                // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
                                                // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
                                                // borderRadius: BorderRadius.circular(40),
                                            
                                                focusedBorder: border,
                                            
                                                // ------------------------------------------------2----------------------------------------
                                                //---before focousing on text feild
                                                // enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: const Color.fromARGB(255, 169, 30, 233), width: 2.0,style:BorderStyle.solid),
                                                // // borderRadius: BorderRadius.all(Radius.circular(20)) //try
                                                // // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
                                                // // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
                                                // // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
                                                // borderRadius: BorderRadius.circular(40),),
                                            
                                                enabledBorder: border,
                                            
                                                // ----------------------
                                                // due to border, widget has became too big, save it in a variable--10:46:19
                                               
                                                ),
                                                keyboardType: const TextInputType.numberWithOptions(decimal:  true, signed: true), // keyboard will only show num
                                                
                                                onSubmitted:(value) {
                                                  debugPrint("value entered"); // will get triggered only when we hit enter not when we click button
                                                },

                                                controller: textEditingController,
                                            
                                            
                                              ), // allow to accept user input
                                          ),
                                          // ------------------------------------------------------------------------
                                          // buttons --1)raised    2) appear like a text
                                          // TextButton(onPressed: (){}, child: Text('Click me'),),
                                          // // -----------------------------------------------------------------
                                          // TextButton(onPressed: (){
                                          //   // debugPrint("Button clicked"); //will be printed in debug console//--way 1--
                                          //   if(kDebugMode){print("Button clicked");}

                                          // }, child: Text('Click me'),),
                                          // //------------------------------------------------------------------- 

                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ElevatedButton(onPressed: (){
                                              // if(kDebugMode){print("button clicked");}
                                              //  print(textEditingController);
                                              //  print(textEditingController.text);

                                              //  print(double.parse(textEditingController.text)*81);
                                               //textEditingController.text gives us string

                                               result = double.parse(textEditingController.text)*81;
                                               build(context);


                                            }, 
                                                    style: const ButtonStyle(
                                                      backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 232, 60, 118)) ,
                                                        foregroundColor: WidgetStatePropertyAll(Colors.black),
                                                    //  textStyle: WidgetStatePropertyAll(TextStyle( color: Colors.black,fontWeight: FontWeight.bold,),//howver over textstyle--color
                                                        // fixedSize: WidgetStatePropertyAll(Size(1020, 50))   //on diff devices it will look diff ,
                                                        // fixedSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
                                                        // minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50))   
                                                        // maxmumSize: WidgetStatePropertyAll(Size(double.infinity, 50))  
                                                        //
                                                            
                                                            shape:  WidgetStatePropertyAll(RoundedRectangleBorder())

                                                                   ),

                                                    // style : ElevatedButton.styleFrom()               
                                                      
                                                    child: Text("Convert"),
                                                    // child: Icon(Icons.money),
                                                    
                                                              
                                                    ),
                                          )  

                                             ],
                                    ),
                      ),
        );
        }

}