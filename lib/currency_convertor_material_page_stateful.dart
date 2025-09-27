import 'package:flutter/material.dart';

// class CurrencyConverterMaterialPage  extends StatefulWidget{
//    CurrencyConverterMaterialPage({super.key}){
//     print("constructor"); // check order of execution--12:22:42
//   }
//   @override
//   // State createState() => State(); 12:10:00
//   // State createState() => _currencyConvertorMaterialPageSate();

//   State createState() {
//     print("create state");
//     return _currencyConvertorMaterialPageState();}

// }

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State createState() => _currencyConverterMaterialPageState();
}

class _currencyConverterMaterialPageState extends State {
  // double result; // try
  double result = 1.1;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("init state");
  } // here init gets called before build--lets put init after build and see

  @override
  Widget build(BuildContext context) {
    print("Built fun");
    // double result = 0.0;

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: const Color.fromARGB(255, 169, 30, 233),
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ), //10:33:32
      // borderRadius: BorderRadius.all(Radius.circular(20)) //try --all edges
      // borderRadius: BorderRadius.horizontal(left: Radius.circular(60)), //try
      // borderRadius: BorderRadius.horizontal(right: Radius.circular(60)), //try
      // borderRadius: BorderRadius.vertical(top:Radius.circular(60)),
      borderRadius: BorderRadius.circular(40),
    );

    return Scaffold(
      // backgroundColor: Color.fromARGB(111, 1, 1, 0),
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        elevation: 2,
        title: const Text("Currency Convertor"),
        // centerTitle: true,
        actions: [
          // Text("Hello"),
          IconButton(
            onPressed: () {
              debugPrint("Time");
            },
            icon: Icon(Icons.access_time),
          ),
        ], // action contains list of widgets
        leading: Icon(Icons.ac_unit_sharp), //contains only one widget
      ),

      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment
                  .center, // center widget had centered the column--now column is at the begining--add crossaxisallign
          crossAxisAlignment:
              CrossAxisAlignment
                  .center, //still can't allign to center-- use center--remove center nd see
          children: [
            Container(
              padding: EdgeInsets.all(
                10,
              ), // try changing value //container doesn't take whole width like textfeild only as much as required by child--try reducing font size of text
              margin: EdgeInsets.all(50),
              color: const Color.fromARGB(168, 230, 23, 23),

              // we can set height , width of container
              // height: ,
              // width: ,
              child: Text(
                //result.toString(),
                "INR ${result}",
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
                  color:
                      Colors
                          .deepOrange, // textstyle is always related to text(not feild)
                ),
                decoration: InputDecoration(
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
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ), // keyboard will only show num

                onSubmitted: (value) {
                  debugPrint(
                    "value entered",
                  ); // will get triggered only when we hit enter not when we click button
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
              child: ElevatedButton(
                onPressed: () {
                  // if(kDebugMode){print("button clicked");}
                  //  print(textEditingController);
                  //  print(textEditingController.text);

                  //  print(double.parse(textEditingController.text)*81);
                  //textEditingController.text gives us string

                  //  result = double.parse(textEditingController.text)*81;
                  //  build(context);

                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                  //                                          ---------------------------------------------------------------------------------------
                  // result = double.parse(textEditingController.text)*81;
                  // setState(() {

                  // });
                  //works the same;
                  //                                          ---------------------------------------------------------------------------------------
                },

                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 232, 60, 118),
                  ),
                  foregroundColor: WidgetStatePropertyAll(Colors.black),

                  //  textStyle: WidgetStatePropertyAll(TextStyle( color: Colors.black,fontWeight: FontWeight.bold,),//howver over textstyle--color
                  // fixedSize: WidgetStatePropertyAll(Size(1020, 50))   //on diff devices it will look diff ,
                  // fixedSize: WidgetStatePropertyAll(Size(double.infinity, 50))
                  // minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50))
                  // maxmumSize: WidgetStatePropertyAll(Size(double.infinity, 50))
                  //
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
                ),

                // style : ElevatedButton.styleFrom()
                child: Text("Convert"),

                // child: Icon(Icons.money),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //        @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   print("init state");
  // }   // still implements befor built
}
