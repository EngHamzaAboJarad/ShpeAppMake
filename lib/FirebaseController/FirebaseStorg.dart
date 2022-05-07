import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';

class firebaseStorges {
  final FirebaseStorage _firebaseStorge = FirebaseStorage.instance;

  Future<List<Reference>> getImages() async {
    List<String> images = <String>[];
    ListResult listResult = await _firebaseStorge.ref('slider').listAll();
    if (listResult.items.isNotEmpty) {

      return listResult.items;
    }
    return [];
  }
}
