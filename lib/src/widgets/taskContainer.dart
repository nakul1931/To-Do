import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskContainer extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final Status status;

  const TaskContainer({this.title, this.date, this.time, this.status});
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    Color color;
    Color textColor;
    Color textDateColor;
    Widget child;
    switch (status) {
      case Status.Completed:
        color = AppColors.lightpurpule;
        textColor = AppColors.white;
        textDateColor = AppColors.white;
        child = isCompleted(textColor, context);
        break;
      case Status.Pending:
        color = AppColors.white;
        textColor = AppColors.black;
        textDateColor = AppColors.darkGrey;
        child = pending(textColor);
        break;
      default:
        color = AppColors.white;
        textColor = AppColors.black;
        textDateColor = AppColors.darkGrey;
        child = pending(textColor);
        break;
    }
    return Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: AppColors.lightGrey),
            borderRadius: BorderRadius.circular(10.0),
            color: color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            child,
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(date, style: TextStyles.basedateStyle(textDateColor)),
                Text(
                  time,
                  style: TextStyles.basedateStyle(textDateColor),
                ),
              ],
            )
          ],
        ));
  }

  Widget isCompleted(Color textColor, context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.75 - 80,
          child: Text(
            title,
            style: TextStyles.titleStyle(textColor),
          ),
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.white),
            child: Icon(Icons.check, color: AppColors.lightpurpule))
      ],
    );
  }

  Widget pending(Color textColor) {
    return Text(
      title,
      style: TextStyles.titleStyle(textColor),
    );
  }
}

enum Status { Completed, Pending }
