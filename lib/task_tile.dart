import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?)? checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      onChanged: checkboxCallback,
      title: Text(
        taskTitle!,
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