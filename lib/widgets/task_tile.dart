import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleCheck;
  final Function() longPress;
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.toggleCheck,
      required this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      leading: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheck,
      ),
    );
  }
}
