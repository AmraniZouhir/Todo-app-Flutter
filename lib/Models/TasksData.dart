import 'package:flutter/material.dart';
import 'package:todo_app/Models/Tasks.dart';

class TasksData extends ChangeNotifier {
  //ChangeNotifier hadi katb9a hadya had list in changemon 4aytrafiha
  List<Task> tasks = [];

  void addtask(nweTaskTitel) {
    tasks.add(Task(name: nweTaskTitel));
    notifyListeners();
  }

  void udateCheckBox(Task task) {
    task.doneChanged();
    notifyListeners();
  }

  void deletetaskss(Task task) {
    tasks.remove(task);
  }
}
