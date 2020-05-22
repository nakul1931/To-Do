import 'package:TodoList/src/screens/tasklist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

abstract class Routes {
  static MaterialPageRoute materialPageRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/taskList":
        return MaterialPageRoute(
          builder: (context) => TaskListPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => TaskListPage(),
        );
    }
  }

  static CupertinoPageRoute cupertinoPageRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/taskList":
        return CupertinoPageRoute(
          builder: (context) => TaskListPage(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => TaskListPage(),
        );
    }
  }
}
