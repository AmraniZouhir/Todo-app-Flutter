import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Models/Tasks.dart';
import 'package:todo_app/Models/TasksData.dart';
import 'package:todo_app/Widgets.dsrt/TaskTodo.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemCount: taskdata.tasks.length,
          itemBuilder: (context, index) {
            if (index >= 0 && index < taskdata.tasks.length) {
              return TaskTodo(
                isChecked: taskdata.tasks[index].isDone,
                taskTitle: taskdata.tasks[index].name,
                checkBoxChange: (newValue) {
                  taskdata.udateCheckBox(taskdata.tasks[index]);
                },
                delateTask: () {
                  taskdata.deletetaskss(taskdata.tasks[index]);
                },
              );
            } else {
              // Handle the case when the index is out of range
              return SizedBox.shrink(); // or another appropriate widget
            }
          },
        );
      },
    );
  }
}
