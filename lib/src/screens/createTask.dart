import 'package:TodoList/src/models/task.dart';
import 'package:TodoList/src/provider/task_provider.dart';
import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:TodoList/src/widgets/button.dart';
import 'package:TodoList/src/widgets/detailsPicker.dart';
import 'package:TodoList/src/widgets/taskContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class CreateTaskPage extends StatelessWidget {
  final Task task = new Task();

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
    var addTask = Provider.of<TaskProvider>(context);
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(right: 15.0, left: 15.0, top: 10.0, bottom: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_backspace,
                size: 40.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Create\nNew Task",
                style: TextStyles.headingStyle,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              onChanged: (String value) {
                task.setTitle(value);
              },
              decoration: InputDecoration(
                hintText: "Task Name",
                hintStyle: TextStyles.baseTextStyle,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            DetailsPicker(
              isBorder: false,
              icon: FontAwesomeIcons.calendar,
              iconColor: AppColors.yellow,
              iconAccent: AppColors.lightYellow,
              child: Text(
                "Friday 28, November",
                style: TextStyles.titleStyle(AppColors.black),
              ),
            ),
            DetailsPicker(
              isBorder: false,
              icon: FontAwesomeIcons.clock,
              iconColor: AppColors.red,
              iconAccent: AppColors.lightRed,
              child: Text(
                "Friday 28, November",
                style: TextStyles.titleStyle(AppColors.black),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            DetailsPicker(
              isBorder: true,
              icon: FontAwesomeIcons.briefcase,
              iconColor: AppColors.purpule,
              iconAccent: AppColors.lightPupule,
              child: Row(
                children: <Widget>[
                  Text(
                    "Work",
                    style: TextStyles.titleStyle(AppColors.black),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            DetailsPicker(
              isBorder: true,
              icon: FontAwesomeIcons.bell,
              iconColor: AppColors.blue,
              iconAccent: AppColors.lightBlue,
              child: Row(
                children: <Widget>[
                  Text(
                    "Remind me",
                    style: TextStyles.titleStyle(AppColors.black),
                  ),
                  CupertinoSwitch(
                    value: false,
                    onChanged: (value) => print(value),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AppButton(
                title: "CREATE TASK",
                color: AppColors.black,
                onTap: () {
                  task.setDate("data");
                  task.setTime("time");
                  task.setStatus(Status.Pending);
                  addTask.addToTaskList(task);
                  print("Added");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
