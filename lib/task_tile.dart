import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TaskCheckbox();
  }
}

class TaskCheckbox extends StatefulWidget {
  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
      title: Text("Placeholder 1"),
      controlAffinity: ListTileControlAffinity.trailing,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
