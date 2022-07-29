import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 45.0),
            ),
            TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightBlueAccent, width: 15.0))),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: null,
            ),
            SizedBox(
              width: 250.0,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent),
                  ),
                  onPressed: null,
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
