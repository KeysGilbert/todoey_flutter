import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [];
  
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      TaskTile(),
      TaskTile(),
    ]);
  }
}
