import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Color color;

  const AppButton({@required this.title, @required this.color});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: color,
      height: 60.0,
      minWidth: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyles.buttonStyle,
        ),
      ),
    );
  }
}
