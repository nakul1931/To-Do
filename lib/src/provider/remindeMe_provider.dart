import 'package:flutter/material.dart';

class RemindMeProvider extends ChangeNotifier {
  bool status = false;
  void setRemindMe(bool value) {
    this.status = value;
    notifyListeners();
  }

  bool get getRemindMe => this.status;
}
