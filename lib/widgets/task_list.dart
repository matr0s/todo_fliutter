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
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.taskName,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              removeCallback: () {
                taskData.taskDelete(task);
              },
            );
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
