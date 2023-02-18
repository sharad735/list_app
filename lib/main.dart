import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app_dummy/models/task_data.dart';
import 'screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      builder: (context, child) => MaterialApp(
        home: TaskScreen(),
      ),
      
    );
  }
}
