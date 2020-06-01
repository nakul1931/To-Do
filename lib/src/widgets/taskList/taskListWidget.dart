import 'package:TodoList/src/provider/taskList_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../taskContainer.dart';

class TaskListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("====Task List Widget Rebuild====");
    var taskListData = Provider.of<TaskListProvider>(context);
    return Expanded(
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
    );
  }
}
