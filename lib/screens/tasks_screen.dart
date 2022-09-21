import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/task_data.dart';
import 'package:todoey_flutter/task_list.dart';
import 'add_task_screen.dart';
import 'package:todoey_flutter/task.dart';
import 'package:todoey_flutter/task_data.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  

  //int numTasks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      size: 40.0,
                    ),
                  ),
                  SizedBox(width: 10.0, height: 20.0),
                  Text(
                    "Todoey",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Provider.of<TaskData>(context).tasks.length} tasks",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: TaskList(Provider.of<TaskData>(context).tasks),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) =>
                    SafeArea(child: AddTaskScreen((newTaskTitle) {
                      setState(() {
                        Provider.of<TaskData>(context).tasks.add(Task(taskText: newTaskTitle));
                      });
                      Navigator.pop(context);
                    })));
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add)),
    );
  }
}
