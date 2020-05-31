import 'package:TodoList/src/provider/task_provider.dart';
import 'package:TodoList/src/provider/title_provider.dart';
import 'package:TodoList/src/routes.dart';
import 'package:TodoList/src/screens/tasklist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:provider/provider.dart';
// import 'package:provider/single_child_widget.dart';

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
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TaskProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => TitleProvider(),
          )
        ],

        // create: (context) => TaskProvider(),
        child: MaterialApp(
          home: TaskListPage(),
          onGenerateRoute: Routes.materialPageRoute,
        ),
      );
    }
  }
}
