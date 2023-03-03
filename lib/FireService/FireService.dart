import 'package:cloud_firestore/cloud_firestore.dart';

class FireService {
  var db = FirebaseFirestore.instance.collection('tasklist');

  void addDetails(){

  }
  // void addDetails() {
  //   db
  //       .doc()
  //       .set({
  //         "profile": FirebaseFirestore.instance
  //             .doc("2")
  //             .set({"fname": "kk", "lname": "king", "email": "jack@gmail.com"})
  //             .then((value) => print("profile done"))
  //             .onError((error, stackTrace) => error.toString())
  //             .then((value) => print("done")),
  //         "taskEducation": db
  //             .doc()
  //             .set({
  //               "branch": "CSE",
  //               "qualification": "BE",
  //               "year": "2023",
  //             })
  //             .then((value) => print("taskEducation done"))
  //             .onError((error, stackTrace) => error.toString()),
  //         "taskaddress": db.doc().set({
  //           "house": "55",
  //           "city": "kanpur",
  //           "state": "UP",
  //           "pincode": "272122",
  //         })
  //       })
  //       .then(
  //         (value) => print("Done"),
  //       )
  //       .onError((error, stackTrace) => error);
  // }


  // Future<String> accessData() async{
  //
  // }

}
