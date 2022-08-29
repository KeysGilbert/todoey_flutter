import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;

  TaskTile({this.isChecked, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      onChanged: (newValue) {},
      title: Text(taskTitle!,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
      
// setState(() {
 //         isChecked = newValue;
   //     });