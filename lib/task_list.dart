import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'task.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //obtain Provider type fromm ancestor and pass to builder
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: Provider.of<TaskData>(context).taskCount,
          itemBuilder: ((context, index) {
            return TaskTile(
              taskTitle: taskData.taskInfo[index].taskText,
              isChecked: taskData.taskInfo[index].isFinished,
              checkboxCallback: (checkboxState) {
                //taskData.crossOutTask(taskData.taskInfo[index]);
                taskData.crossOutTask(taskData.taskInfo[index]);
              },
              longPress: () {
                taskData.removeTask(index);
              },
            );
          }));
    });
  }
}
