import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/pages/firestore_manage.dart';

class Notepage extends StatefulWidget{
   const Notepage({super.key});

   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NotePageState();
  }
}

class NotePageState extends State{
  final FirestoreManager FM = FirestoreManager();
  TextEditingController newnote = TextEditingController();
  void openBox(){
    showDialog(context: context, 
    builder: (contex){
     return  AlertDialog(
        content: TextField(
          controller: newnote,
        ),
        actions: [
          OutlinedButton(onPressed:() 
          {//add note
            FM.addNote(newnote.text);
            // clear textcontroller
            newnote.clear();
            //remove dilogue box
            Navigator.pop(contex);
             },
          child: Text("Add Note"))
        ],
      );

    });
  }
  @override
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "My Notes",
          style: TextStyle(color: Colors.white),
          ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          openBox();
        },
        child: Icon(Icons.add),
        ),
      
      body: StreamBuilder(stream: FM.getNOteStream(),
       builder: (context,Snapshot){
        if(Snapshot.hasData){
          
          List notes = Snapshot.data!.docs;
          // this is list of doc in collection

          //now display
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context,index){
            
            //doc from list
            DocumentSnapshot document = notes[index];
            // String docID = document.id;

            //note from list
            Map<String,dynamic> data = document.data() as Map<String,dynamic>;

            return Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              // color: Colors.blue[50],
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: Text(data['Note'],
                textAlign: TextAlign.center,),
              ),
            );

          });
        }
        else{
          return Text('No NOtes');
        }
       }
       ),
    );
  }
  
}