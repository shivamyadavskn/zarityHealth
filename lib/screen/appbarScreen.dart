import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/FireService/FireService.dart';

import '../providers/provider.dart';

AppBar appBarScreen(BuildContext context) {
  FireService fireService = FireService();
  final providerData = Provider.of<Providers>(context);
  return AppBar(
    backgroundColor: const Color(0xff4169e1),
    toolbarHeight: 80,
    leadingWidth: 120,
    leading: Row(
      children: [
        const CircleAvatar(
          radius: 31,
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            Text(
              "Hii,",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Jully",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ],
    ),
    actions: [
      IconButton(
          onPressed: () {
            fireService.addDetails();
          },
          icon: const Icon(
            Icons.message,
            color: Colors.white,
          )),
      IconButton(
          onPressed: () {
          providerData.setPercentValue();
          },
          icon: const Icon(
            Icons.add_alert,
            color: Colors.white,
          ))
    ],
  );
}
