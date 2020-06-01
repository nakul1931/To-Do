import 'dart:io';

// import 'package:TodoList/src/data/dataMap.dart';
import 'package:TodoList/src/provider/taskList_provider.dart';
import 'package:TodoList/src/provider/title_provider.dart';
import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:TodoList/src/widgets/button.dart';
import 'package:TodoList/src/widgets/taskContainer.dart';
import 'package:TodoList/src/widgets/taskList/titleManager.dart';
import 'package:TodoList/src/widgets/todoButton.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

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
    print("====Task List Page Rebuild====");
    var taskListData = Provider.of<TaskListProvider>(context);

    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 15.0, left: 15.0, top: 50.0, bottom: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "TASKS LIST",
                  style: TextStyles.baseTextStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TitleManager(),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: <Widget>[
                //     // Text(
                //     //   "Work",
                //     //   style: TextStyles.headingStyle,
                //     // ),
                //     SizedBox(
                //         width:
                //             (MediaQuery.of(context).size.width * 0.8 - 30.0) /
                //                 1.5,
                //         child: titleProvider.getWidget()),
                //     IconButton(
                //       icon: FaIcon(FontAwesomeIcons.pencilAlt),
                //       onPressed: () {
                //         status = !status;
                //         titleProvider.setBool(status);
                //       },
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return TaskContainer(
                        title: taskListData.getTaskList()[index].title,
                        time: taskListData.getTaskList()[index].time,
                        date: taskListData.getTaskList()[index].date,
                        status: taskListData.getTaskList()[index].status,
                      );
                    },
                    itemCount: taskListData.getTaskList().length,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AppButton(
                    color: AppColors.lightpurpule,
                    title: "+ ADD NEW TASK",
                    onTap: () {
                      Navigator.pushNamed(context, "/createTask");
                    },
                  ),
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
