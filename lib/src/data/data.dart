import 'package:TodoList/src/data/dataMap.dart';
import 'package:TodoList/src/models/task.dart';

List<Task> getPairs() {
  List<Task> taskList = [];
  print(DataMap.dataMap[0]["title"]);
  Task task = new Task();
  task.setTitle(DataMap.dataMap[0]["title"]);
  task.setDate(DataMap.dataMap[0]["date"]);
  task.setTime(DataMap.dataMap[0]["time"]);
  taskList.add(task);

  return taskList;
}
