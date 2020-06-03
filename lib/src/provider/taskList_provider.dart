import 'package:TodoList/src/data/data.dart';
import 'package:TodoList/src/models/task.dart';
import 'package:TodoList/src/widgets/taskContainer.dart';
import 'package:flutter/material.dart';

class TaskListProvider extends ChangeNotifier {
  List<Task> taskList = [];

  List<Task> getTaskList() {
    return [...taskList];
  }

  void replaceList(List<Task> _taskList) {
    // print("TODO addedd");
    print(_taskList);
    this.taskList = _taskList;
    TaskListProvider().addToTaskList(_taskList[0]);
    // notifyListeners();
  }

  void setTaskList(int index) {
    List<Task> _taskList = [];

    for (int i = 0; i < dataButton["collections"][index]["todos"].length; i++) {
      Task _task = new Task();
      _task.setTitle(dataButton["collections"][index]["todos"][i]["heading"]);
      if (dataButton["collections"][index]["todos"][i]["completed"] == true) {
        _task.setStatus(Status.Completed);
      } else {
        _task.setStatus(Status.Pending);
      }

      _taskList.add(_task);
    }
    TaskListProvider().replaceList(_taskList);
  }

  void addToTaskList(Task task) {
    print("Added");
    print(task.title);
    taskList.add(task);
    notifyListeners();
  }
}
