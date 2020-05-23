import 'dart:io';

import 'package:TodoList/src/data/dataMap.dart';
import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:TodoList/src/widgets/button.dart';
import 'package:TodoList/src/widgets/taskContainer.dart';
import 'package:TodoList/src/widgets/todoButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: SafeArea(child: pageBody(context)),
      );
    } else {
      return Scaffold(
        body: SafeArea(child: pageBody(context)),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // CalendarDatePicker(

                //   initialDate: DateTime(22),
                //   firstDate: DateTime(22),
                //   lastDate: DateTime(2000),
                //   onDateChanged: (DateTime dateTime) {},
                // ),
                Text(
                  "TASKS LIST",
                  style: TextStyles.baseTextStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Work",
                      style: TextStyles.headingStyle,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.pencilAlt),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      // print(DataMap.dataMap[index]);
                      return TaskContainer(
                        title: DataMap.dataMap[index]["title"],
                        time: DataMap.dataMap[index]["time"],
                        date: DataMap.dataMap[index]["date"],
                        status: DataMap.dataMap[index]["status"],
                      );
                    },
                    itemCount: DataMap.dataMap.length,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                AppButton(
                  color: AppColors.lightpurpule,
                  title: "+ ADD NEW TASK",
                  onTap: () {
                    Navigator.pushNamed(context, "/createTask");
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.2,
            padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 15.0),
            height: MediaQuery.of(context).size.height,
            color: AppColors.sideBarblack,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.bars,
                  color: AppColors.white,
                ),
                SizedBox(
                  height: 75.0,
                ),
                Expanded(
                    child: Column(children: <Widget>[
                  TodoButton(
                      color: AppColors.lightpurpule,
                      height: (MediaQuery.of(context).size.width * 0.2) - 30.0),
                ])),
                SizedBox(
                  height: 20.0,
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.calendar),
                  color: AppColors.white,
                  onPressed: () => {print("Calendar Pressed")},
                )
              ],
            )),
      ],
    );
  }
}
