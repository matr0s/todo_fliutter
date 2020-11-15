import 'package:flutter/foundation.dart';
import 'package:todoey_fliutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskName: 'Buy milk'),
  ];
  int get taskCount {
    return tasks.length;
  }
}
