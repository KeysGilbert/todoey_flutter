class Task {
  final String taskText; //the task itself
  bool isFinished; //will be set to true when the checkbox is checked

  Task({this.taskText = "", this.isFinished = false});

  void finish() {
    isFinished = !isFinished;
  }
}
