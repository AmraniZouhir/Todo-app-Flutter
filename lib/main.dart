import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Models/TasksData.dart';
import 'package:todo_app/Scrines/TackScrine.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //ChangeNotifierProvider hadi hya likatfr9 dik data 3la ga3 les intirface liththa
      create: (context) => TasksData(),
      child: MaterialApp(
        home: TackScrine(),
      ),
    );
  }
}
