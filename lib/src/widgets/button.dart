import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: AppColors.lightpurpule,
      height: 60.0,
      minWidth: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {},
        child: Text(
          "+ ADD NEW TASK",
          style: TextStyles.buttonStyle,
        ),
      ),
    );
  }
}
