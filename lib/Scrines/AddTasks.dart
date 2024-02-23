import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Models/TasksData.dart';

class AddTasks extends StatelessWidget {
  final Function addTaskColback;
  const AddTasks(this.addTaskColback);

  @override
  Widget build(BuildContext context) {
    String? newTitelText;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Add tasks',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 236, 131, 46))),
          TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTitelText = newText;
              }),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 247, 164, 96)),
            onPressed: () {
              Provider.of<TasksData>(context, listen: false)
                  .addtask(newTitelText!);
              Navigator.pop(context);
            },
            child: Text('data'),
          )
        ],
      ),
    );
  }
}
