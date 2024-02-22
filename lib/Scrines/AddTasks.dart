import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  const AddTasks({super.key});

  @override
  Widget build(BuildContext context) {
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
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromARGB(255, 247, 164, 96)),
            onPressed: null,
            child: Text('data'),
          )
        ],
      ),
    );
  }
}
