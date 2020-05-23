import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsPicker extends StatelessWidget {
  final bool isBorder;
  final IconData icon;
  final Color iconColor;
  final Color iconAccent;
  final Widget child;

  const DetailsPicker(
      {@required this.isBorder,
      @required this.icon,
      @required this.iconColor,
      @required this.iconAccent,
      @required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: isBorder
          ? BoxDecoration(
              border: Border.all(width: 1.0, color: AppColors.lightGrey),
              borderRadius: BorderRadius.all(Radius.circular(10.0)))
          : null,
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: iconAccent,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: FaIcon(icon, color: iconColor),
          ),
          SizedBox(
            width: 30.0,
          ),
          child
        ],
      ),
    );
  }
}
