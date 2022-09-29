import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskText: "practice coding"),
    Task(taskText: "Apply for jobs"),
    Task(taskText: "Watch youtube")
  ];

  int get taskCount => _tasks.length;
  UnmodifiableListView<Task> get taskInfo => UnmodifiableListView(
      _tasks); //do not want to unnecesarrily change tasks list

  void addTask(String taskText) {
    _tasks.add(Task(taskText: taskText));
    notifyListeners(); //notify widget that data being provided has changed
  }

  void crossOutTask(Task task) {
    task.finish();
    notifyListeners();
  }
}
