import 'package:TodoList/src/styles/text.dart';
import 'package:flutter/material.dart';

class TitleProvider extends ChangeNotifier {
  bool isSelected = false;
  Widget child;
  String title;

  TitleProvider({this.isSelected, this.child});

  void setTitle(String title) {
    this.title = title;
  }

  Widget getWidget() {
    if (isSelected == true || isSelected == null) {
      return TextField(
        decoration: InputDecoration(hintText: "Work"),
      );
    } else {
      return Text(
        "Work",
        style: TextStyles.headingStyle,
      );
    }
    // return child;
    // return Text("Check");
  }

  void setBool(bool status) {
    this.isSelected = status;
    notifyListeners();
  }
}
