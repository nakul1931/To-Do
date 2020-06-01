import 'package:TodoList/src/provider/title_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

bool status = true;

class TitleManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("======TitleManager Widget Rebuild=======");
    var titleProvider = Provider.of<TitleProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
            width: (MediaQuery.of(context).size.width * 0.8 - 30.0) / 1.5,
            child: titleProvider.getWidget()),
        IconButton(
          icon: FaIcon(titleProvider.getIcon()),
          onPressed: () {
            print(status);
            status = !status;
            titleProvider.setBool(status);
          },
        ),
      ],
    );
  }
}
