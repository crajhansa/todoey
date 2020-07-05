import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/model/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.taskList[index];
            return Dismissible(
              key: Key(task.name),
              onDismissed: (direction) {
                taskData.removeTask(index);
              },
              background: Container(color: Colors.red),
              child: TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxFunction: (value) {
                  taskData.updateTask(task);
                },
              ),
            );
          }),
    );
  }
}
