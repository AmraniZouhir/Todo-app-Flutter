class Task {
  late final String name;
  late bool isDone;

  Task({required this.name, this.isDone = false});

  void doneChanged() {
    isDone = !isDone;
  }
}
