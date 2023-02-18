import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app_dummy/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              onChanged: (value) {
                newTaskTitle = value;
              },
              textAlign: TextAlign.center,
              autofocus: true,
            ),
            MaterialButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                context.read<TaskData>().addNewTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
