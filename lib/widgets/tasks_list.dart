import 'package:flutter/material.dart';
import 'package:to_do_ey/models/task.dart';
import 'task_tile.dart';



class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index) {
      return TaskTile(
        tileTitle: widget.tasks[index].taskTitle,
        isChecked: widget.tasks[index].isDone,
        chackBoxCallBack: (checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        },
      );
    }, itemCount: widget.tasks.length,);
  }
}