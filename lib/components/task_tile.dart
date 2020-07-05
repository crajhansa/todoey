import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxFunction;
  TaskTile({this.isChecked, this.checkBoxFunction, this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough: null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxFunction,
      )
    );
  }
}
