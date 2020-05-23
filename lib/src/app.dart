import 'package:TodoList/src/routes.dart';
import 'package:TodoList/src/screens/tasklist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformCheck();
  }
}

class PlatformCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: TaskListPage(),
        onGenerateRoute: Routes.cupertinoPageRoute,
      );
    } else {
      return MaterialApp(
        home: TaskListPage(),
        onGenerateRoute: Routes.materialPageRoute,
      );
    }
  }
}
