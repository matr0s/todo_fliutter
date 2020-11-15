import 'package:flutter/material.dart';

import 'package:todoey_fliutter/widgets/task_tile.dart';
import 'package:todoey_fliutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy water'),
    Task(taskName: 'Buy meet'),
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy water'),
    Task(taskName: 'Buy meet'),
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy water'),
    Task(taskName: 'Buy meet'),
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy water'),
    Task(taskName: 'Buy meet'),
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy water'),
    Task(taskName: 'Buy meet'),
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy water'),
    Task(taskName: 'Buy meet'),
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy water'),
    Task(taskName: 'Buy meet'),
    Task(taskName: 'Buy milk'),
    Task(taskName: 'Buy water'),
    Task(taskName: 'Buy meet'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].taskName,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
    // padding:
    //     EdgeInsets.only(top: 40.0, bottom: 10.0, left: 30.0, right: 30.0),
    //
  }
}
