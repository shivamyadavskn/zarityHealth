import 'package:flutter/material.dart';
import 'package:untitled/screen/bottomsheet.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 380,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white38,
      ),
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                ModalBottoomSheets(context: context);
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
                    child: Text(index.toString()),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
