import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  final String title;
  final String date;
  final String time;

  const TaskContainer({this.title, this.date, this.time});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: AppColors.lightGrey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: TextStyles.titleStyle,
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(date, style: TextStyles.basedateStyle),
                Text(
                  time,
                  style: TextStyles.basedateStyle,
                ),
              ],
            )
          ],
        ));
  }
}
