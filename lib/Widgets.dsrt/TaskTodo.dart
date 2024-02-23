import 'package:flutter/material.dart';

class TaskTodo extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;
  final void Function() delateTask;

  TaskTodo({
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxChange,
    required this.delateTask,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 23,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxChange,
      ),
      onLongPress: delateTask,
    );
  }
}
