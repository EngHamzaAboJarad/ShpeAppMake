import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreController {
   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
   Future<void> InsertUserInformationIntoFirebase(Map<String,dynamic>mapUser) async {
   await _firebaseFirestore.collection('Users').
   add(mapUser).
   then((value) =>true).
   catchError((E)=>false);
   }
}
