import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  int numTasks = 0;

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
                    "$numTasks tasks",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: ListView(children: <Widget>[
                  CheckboxListTile(
                    value: false,
                    onChanged: null,
                    title: Text("Placeholder 1"),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  CheckboxListTile(
                    value: false,
                    onChanged: null,
                    title: Text("Placeholder 2"),
                    controlAffinity: ListTileControlAffinity.trailing,
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add)),
    );
  }
}
