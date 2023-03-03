import 'package:flutter/cupertino.dart';
import 'package:untitled/FireService/FireService.dart';

class Providers with ChangeNotifier {
  final FireService _fireService = FireService();
  double percentValue=0.3;

  void setDetails() {
   // _fireService.addDetails();
    notifyListeners();
  }

  void setPercentValue(){
    percentValue=0.5;
    notifyListeners();
  }

}
