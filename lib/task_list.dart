import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList(this.tasks);
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: ((context, index) {
          return TaskTile(
            taskTitle: widget.tasks[index].taskText,
            isChecked: widget.tasks[index].isFinished,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].finish();
              });
            },
          );
        }));
  }
}
