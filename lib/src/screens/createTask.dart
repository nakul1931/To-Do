import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:TodoList/src/widgets/button.dart';
import 'package:TodoList/src/widgets/detailsPicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateTaskPage extends StatelessWidget {
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
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
            AppButton(
              title: "CREATE TASK",
              color: AppColors.black,
              onTap: () => Navigator.pushNamed(context, "/schedule"),
            ),
          ],
        ),
      ),
    );
  }
}
