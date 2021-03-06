import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:todoey_fliutter/models/task_data.dart';

import 'package:todoey_fliutter/widgets/task_list.dart';
import 'package:todoey_fliutter/widgets/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 50.0,
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding:
              EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0, bottom: 30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.list,
                size: 70.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Todoey',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Text(
              '${Provider.of<TaskData>(context).taskCount} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ]),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
            ),
            child: TasksList(),
          ),
        ),
      ]),
    );
  }
}
