import 'package:flutter/material.dart';

class TodoButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function onTap;

  const TodoButton({this.color, @required this.title, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: ButtonTheme(
        height: (MediaQuery.of(context).size.width * 0.2) - 30.0,
        buttonColor: color,
        child: RaisedButton(
          padding: EdgeInsets.all(5.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          onPressed:onTap,
          child: Text(title),
        ),
      ),
    );
  }
}
