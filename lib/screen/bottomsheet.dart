import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future ModalBottoomSheets({required BuildContext context}){
  return showMaterialModalBottomSheet(
    context: context,
    builder: (context) => SingleChildScrollView(
      controller: ModalScrollController.of(context),
      child: Container(
        height: 150,
        color: Colors.red,
      ),
    ),
  );
}
