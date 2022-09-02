import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(taskText: "practice coding"),
    Task(taskText: "Apply for jobs"),
    Task(taskText: "Watch youtube")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: ((context, index) {
          return TaskTile(
            taskTitle: tasks[index].taskText,
            isChecked: tasks[index].isFinished,
            checkboxCallback: (checkboxState) {
              setState(() {
                tasks[index].finish();
                
              });
            },
          );
        }));
  }
}
