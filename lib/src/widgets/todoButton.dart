import 'package:flutter/material.dart';

class TodoButton extends StatelessWidget {
  final double height;
  final Color color;
  final String title;

  const TodoButton({this.height, this.color, this.title});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: height,
      buttonColor: color,
      child: RaisedButton(
        padding: EdgeInsets.all(5.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        onPressed: () => {},
        child: Text("W"),
      ),
    );
  }
}
