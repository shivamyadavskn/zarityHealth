import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:untitled/FireService/FireService.dart';
import 'package:untitled/providers/provider.dart';
import 'package:untitled/screen/Cards.dart';
import 'package:untitled/screen/appbarScreen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final FireService _fireService = FireService();

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Providers>(context);
    var x = (providerData.percentValue.toDouble() / 1) * 100;
    return Scaffold(
      appBar: appBarScreen(context),
      backgroundColor: const Color(0xff869ee8ff),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            width: 380,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white38,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  radius: 30.0,
                  percent: providerData.percentValue,
                  center: Text("${x.toString()}%"),
                  progressColor: Colors.black,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text("Complete the Remaining Tasks"),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
         const CardsPage(),
        ],
      ),
    );
  }
}
