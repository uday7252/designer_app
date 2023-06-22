import 'package:flutter/material.dart';

class UserSelection extends ChangeNotifier {
  List<bool> selected = [false, false];

  void selectOne(int index) {
    for (int i = 0; i < selected.length; i++) {
      if (i == index) {
        selected[i] = true;
      } else {
        selected[i] = false;
      }
    }
    notifyListeners();
  }
}
