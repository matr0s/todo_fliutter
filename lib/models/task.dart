class Task {
  String taskName;
  bool isDone;
  Task({this.taskName, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
