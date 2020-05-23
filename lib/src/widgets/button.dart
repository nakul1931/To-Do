import 'package:TodoList/src/styles/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function onTap;

  const AppButton({@required this.title, @required this.color, this.onTap});
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
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyles.buttonStyle,
        ),
      ),
    );
  }
}
