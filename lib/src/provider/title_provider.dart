import 'package:TodoList/src/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleProvider extends ChangeNotifier {
  bool isSelected = false;
  IconData icon;
  String title;

  TitleProvider({this.isSelected = false});

  void setTitle(String title) {
    this.title = title;
  }

  Widget getWidget() {
    if (isSelected == false || isSelected == null) {
      return Text(
        "Work",
        style: TextStyles.headingStyle,
      );
    } else {
      return TextField(
        decoration: InputDecoration(hintText: "Work"),
      );
    }
  }

  IconData getIcon() {
    if (isSelected == false || isSelected == null) {
      return FontAwesomeIcons.pencilAlt;
    } else {
      return FontAwesomeIcons.checkSquare;
    }
  }

  void setBool() {
    isSelected = !isSelected;

    notifyListeners();
  }
}
