// import 'package:TodoList/src/models/task.dart';
// import 'package:TodoList/src/provider/task_provider.dart';
// import 'package:TodoList/src/widgets/taskContainer.dart';
import 'package:flutter/material.dart';

// TaskProvider _taskProvider = new TaskProvider();

class CategoryProvider with ChangeNotifier {
  int index;

  void setTaskPage(int index) {
    this.index = index;

    // setPageState();
  }

  // void setPageState() {
  //   print(index);
  //   switch (index) {
  //     case 1:
  //       _taskProvider.setTaskList([
  //         Task(
  //           date: "18 NOV 2019",
  //           title: "Make changes to the new site design",
  //           time: "11:00 - 13:00",
  //           status: Status.Completed,
  //         ),
  //         Task(
  //           date: "18 NOV 2019",
  //           title: "Make changes to the new site design",
  //           time: "11:00 - 13:00",
  //           status: Status.Pending,
  //         ),
  //       ]);
  //       break;
  //     case 2:
  //       _taskProvider.setTaskList([
  //         Task(
  //           date: "18 NOV 2019",
  //           title: "Make changes to the new site design",
  //           time: "11:00 - 13:00",
  //           status: Status.Completed,
  //         ),
  //       ]);
  //       break;
  //   }
  // }
}
