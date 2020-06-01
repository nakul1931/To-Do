import 'package:TodoList/src/models/task.dart';
import 'package:flutter/material.dart';

class CreateTaskProvider with ChangeNotifier {
  Task _task = new Task();

  Task getTaskToAdd(){
    return _task;
  }

  void setTitle(String title) {
    _task.setTitle(title);
    notifyListeners();
  }

  String getTitle() {
    return _task.getTitle();
  }

  void setDate(String date) {
    _task.setDate(date);
    notifyListeners();
  }

  String getDate() {
    return _task.getDate();
  }
  void setTime(String time) {
    _task.setTime(time);
    notifyListeners();
  }

  String getTime() {
    return _task.getTime();
  }

}
