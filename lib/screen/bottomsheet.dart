import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:untitled/screen/tasktodo.dart';

Future ModalBottoomSheets({required BuildContext context,required DocumentSnapshot data}) {
  return showMaterialModalBottomSheet(
    context: context,
    builder: (context) => SingleChildScrollView(
      controller: ModalScrollController.of(context),
      child: Container(
        height: 500,
        width: 250,
        child: Column(
          children: [
            data['isDone'].toString()=='yes'?Text("Task is Done"):TaskToDo(task:data['click'].toString(),data: data,id:data.id),
          ],
        )
      ),
    ),
  );
}
