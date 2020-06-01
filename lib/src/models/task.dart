import 'package:TodoList/src/widgets/taskContainer.dart';

class Task {
  String title;
  String date;
  String time;
  Status status;

  Task({this.title, this.date, this.time, this.status});

  void setTitle(String title) {
    this.title = title;
  }

  void setDate(String date) {
    this.date = date;
  }

  void setTime(String time) {
    this.time = time;
  }

  void setStatus(Status status) {
    this.status = status;
  }
  String getTitle() {
    return this.title;
  }

  String getDate() {
    return this.date;
  }

  String getTime() {
    return this.time;
  }

  Status getStatus() {
    return this.status;
  }
}
