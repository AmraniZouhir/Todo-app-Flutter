import 'package:flutter/material.dart';
import 'package:todo_app/Models/Tasks.dart';
import 'package:todo_app/Scrines/AddTasks.dart';
import 'package:todo_app/Widgets.dsrt/TasksList.dart';

class TackScrine extends StatefulWidget {
  const TackScrine({super.key});

  @override
  State<TackScrine> createState() => _TackScrineState();
}

class _TackScrineState extends State<TackScrine> {
  List<Task> tasks = [
    Task(name: 'sss'),
    Task(name: 'sddss'),
    Task(name: 'sfffss'),
    Task(name: 'sscccs'),
    Task(name: 'sscccs'),
    Task(name: 'sscccs'),
    Task(name: 'sscccs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    child: AddTasks((newTitelText) {
                      setState(() {
                        tasks.add(Task(name: newTitelText));
                        Navigator.pop(context);
                      });
                    }),
                  ));
        },
        backgroundColor: Color.fromARGB(255, 247, 164, 96),
        child: Icon(Icons.add),
      ),
      backgroundColor: const Color.fromARGB(255, 150, 80, 0),
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "TodayDo",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              "${tasks.length} Tasks",
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TasksList(tasks: tasks),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
