import 'package:flutter/material.dart';
import 'package:todoey_fliutter/models/task_data.dart';

import 'package:todoey_fliutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].taskName,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  // setState(() {
                  //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                  // });
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
    // padding:
    //     EdgeInsets.only(top: 40.0, bottom: 10.0, left: 30.0, right: 30.0),
    //
  }
}
