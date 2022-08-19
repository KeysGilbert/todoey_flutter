import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? tastTitle;

  TaskTile({this.isChecked, this.tastTitle});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      onChanged: (newValue) {},
      title: Text(
        "Placeholder 1",
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