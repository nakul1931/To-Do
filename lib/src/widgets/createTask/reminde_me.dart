import 'package:TodoList/src/provider/remindeMe_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class RemindMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var remindMe = Provider.of<RemindMeProvider>(context);
    return CupertinoSwitch(
        value: remindMe.getRemindMe,
        onChanged: (value) {
          remindMe.setRemindMe(value);
        });
  }
}
