import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'task.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';


class TaskList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TaskData>(context).tasks.length,
        itemBuilder: ((context, index) {
          return TaskTile(
            taskTitle: Provider.of<TaskData>(context).tasks[index].taskText,
            isChecked: Provider.of<TaskData>(context).tasks[index].isFinished,
            checkboxCallback: (checkboxState) {
       //       setState(() {
       //         widget.tasks[index].finish();
        //      });
            },
          );
        }));
  }
}
