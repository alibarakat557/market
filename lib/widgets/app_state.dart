import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {

  int selectedStatusId = 0;

  void updateStatusId(int selectedStatusId) {
    this.selectedStatusId  = selectedStatusId;
    notifyListeners();
  }
}
