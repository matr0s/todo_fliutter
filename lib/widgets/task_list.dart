import 'package:flutter/material.dart';

import 'package:todoey_fliutter/widgets/task_tile.dart';
import 'package:todoey_fliutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].taskName,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
    // padding:
    //     EdgeInsets.only(top: 40.0, bottom: 10.0, left: 30.0, right: 30.0),
    //
  }
}
