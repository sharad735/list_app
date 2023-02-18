import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:todoey_app_dummy/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Cofee'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Drink'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addNewTask(newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
