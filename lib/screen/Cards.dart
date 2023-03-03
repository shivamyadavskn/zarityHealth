import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FireService/FireService.dart';
import 'package:untitled/screen/bottomsheet.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FireService fireService = FireService();
    return Container(
      height: 200,
      width: 380,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white38,
      ),
      child: StreamBuilder(
        stream: fireService.db.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                DocumentSnapshot data = snapshot.data!.docs[index];
                return GestureDetector(
                  onTap: () {
                    ModalBottoomSheets(context: context, data: data,);
                  },
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Card(
                      color: Colors.blueGrey,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(data.id.toString()),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
