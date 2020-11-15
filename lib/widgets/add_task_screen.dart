import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addNewTaskCallback;
  AddTaskScreen(this.addNewTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskName;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 25.0),
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
              ),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskName = value;
                },
              ),
            ),
            SizedBox(height: 30.0),
            FlatButton(
              minWidth: 330.0,
              height: 50.0,
              color: Colors.lightBlueAccent,
              onPressed: () {
                addNewTaskCallback(newTaskName);
                //  addNewTaskCallback(newTaskName);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// () {
// //
// newTask.taskName = taskName;
// print(newTask);
// print(newTask.taskName);
// },
