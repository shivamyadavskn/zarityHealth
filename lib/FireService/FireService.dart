import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FireService {
  var db = FirebaseFirestore.instance.collection('tasklist');

  Future<void> updatesTask(String id)async {
    await db.doc(id).update({
      'isDone':'yes',
    });
  }
}
