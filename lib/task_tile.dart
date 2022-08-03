import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return TaskCheckbox(isChecked);
  }
}

class TaskCheckbox extends StatelessWidget {
  @override

  final bool checkboxState;
  TaskCheckbox(this.checkboxState);

  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: checkboxState,
      onChanged: (newValue) {
   //     setState(() {
     //     isChecked = newValue;
       // });
      },
      title: Text("Placeholder 1", style: TextStyle(decoration: checkboxState? TextDecoration.lineThrough : null),),
      controlAffinity: ListTileControlAffinity.trailing,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
