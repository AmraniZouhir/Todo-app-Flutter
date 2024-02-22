import 'package:flutter/material.dart';
import 'package:todo_app/Models/Tasks.dart';
import 'package:todo_app/Widgets.dsrt/TaskTodo.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  const TasksList({
    required this.tasks,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTodo(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkBoxChange: (newValue) {
            setState(() {
              widget.tasks[index].isDone = newValue ?? false;
            });
          },
        );
      },
    );
  }
}
