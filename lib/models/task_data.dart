import 'package:flutter/foundation.dart';
import 'package:todoey_fliutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'Buy milk'),
  ];

  List<Task> get tasks {
    return _tasks;
  }

  int get taskCount {
    return _tasks.length;
  }

  void taskListUpdate(String newTask) {
    final task = Task(taskName: newTask);
    _tasks.add(task);
    notifyListeners();
  }
}
