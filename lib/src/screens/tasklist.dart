import 'dart:io';

import 'package:TodoList/src/data/data.dart';
import 'package:TodoList/src/provider/taskList_provider.dart';
import 'package:TodoList/src/styles/color.dart';
import 'package:TodoList/src/styles/text.dart';
import 'package:TodoList/src/utils/sendData.dart';
import 'package:TodoList/src/widgets/button.dart';
import 'package:TodoList/src/widgets/taskList/taskListWidget.dart';
import 'package:TodoList/src/widgets/taskList/titleManager.dart';
import 'package:TodoList/src/widgets/todoButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskListPage extends StatelessWidget {
  final String g = "fr";
  @override
  Widget build(BuildContext context) {
    g.substring(1, g.length);

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
                //TODO:Title Manager
                TitleManager(),
                SizedBox(
                  height: 20.0,
                ),
                //TODO:Task List Widget
                TaskListWidget(),
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
                IconButton(
                  onPressed: () {
                    SendData().sendData();
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.bars,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(
                  height: 75.0,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: dataButton["collections"].length,
                  itemBuilder: (context, index) {
                    return TodoButton(
                      onTap: () {
                        TaskListProvider().setTaskList(index);
                      },
                      title: dataButton["collections"][index]["name"][0],
                      // color: dataButton["collections"][index]["color"].toColor(),
                    );
                  },
                )),
                SizedBox(
                  height: 20.0,
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.calendar),
                  color: AppColors.white,
                  onPressed: () => {Navigator.pushNamed(context, "/schedule")},
                )
              ],
            )),
      ],
    );
  }
}
