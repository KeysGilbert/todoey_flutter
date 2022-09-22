import 'package:flutter/cupertino.dart';

import 'package:todoey_flutter/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskText: "practice coding"),
    Task(taskText: "Apply for jobs"),
    Task(taskText: "Watch youtube")
  ];

  int get taskCount => tasks.length;
}
