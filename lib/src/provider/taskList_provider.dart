import 'package:TodoList/src/models/task.dart';
import 'package:TodoList/src/widgets/taskContainer.dart';
import 'package:flutter/material.dart';

class TaskListProvider extends ChangeNotifier {
  List<Task> taskList = [
    Task(
      date: "18 NOV 2019",
      title: "Make changes to the new site design",
      time: "11:00 - 13:00",
      status: Status.Completed,
    ),
    Task(
      date: "18 NOV 2019",
      title: "Make changes to the new site design",
      time: "11:00 - 13:00",
      status: Status.Pending,
    ),
    Task(
      date: "18 NOV 2019",
      title: "Make changes to the new site design",
      time: "11:00 - 13:00",
      status: Status.Pending,
    ),
  ];

  List<Task> getTaskList() {
    return [...taskList];
  }

  void addToTaskList(Task task) {
    taskList.add(task);
    notifyListeners();
  }
}
