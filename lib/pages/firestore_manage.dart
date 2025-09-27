import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreManager {
  // get collection pointer
  CollectionReference practiceNotes = FirebaseFirestore.instance.collection('Practice Notes');
  // add note
  Future<void>addNote(String note){
    return practiceNotes.add(
      {
        'Note':note,
        'TimeStamp':Timestamp.now()
      }
    );

  }
  // display note
  Stream<QuerySnapshot> getNOteStream(){
    final noteStream = practiceNotes.orderBy('TimeStamp',descending: true).snapshots();
    return noteStream;
  }
  //update note

 
  //delete note

}