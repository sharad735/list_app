import 'package:flutter/material.dart';
import 'package:todoey_app_dummy/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app_dummy/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name.toString(),
            isChecked: task.isDone,
            toggleCheck: (checkboxState) {
              taskData.updateTask(task);
            },
            longPress: () {
              taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
