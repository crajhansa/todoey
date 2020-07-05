import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [];

  UnmodifiableListView<Task> get taskList => UnmodifiableListView(_taskList);

  int get taskCount => _taskList.length;

  void addTask(String newTaskName) {
    Task task = Task(name: newTaskName);
    _taskList.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    _taskList.removeAt(index);
    notifyListeners();
  }
}
