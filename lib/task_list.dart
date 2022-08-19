import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(taskText: "oractice coding"),
    Task(taskText: "Apply for jobs"),
    Task(taskText: "Watch youtube")
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      TaskTile(tastTitle: tasks[0].taskText, isChecked: tasks[0].isFinished,),
      TaskTile(tastTitle: tasks[1].taskText, isChecked: tasks[1].isFinished,),
      TaskTile(tastTitle: tasks[2].taskText, isChecked: tasks[2].isFinished,)
    ]);
  }
}
