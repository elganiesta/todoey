import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String tileTitle;
  final bool isChecked;
  final Function chackBoxCallBack;

  TaskTile({this.tileTitle, this.isChecked, this.chackBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tileTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: chackBoxCallBack,
      ),
    );
  }
}