import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {

  
  final Function addTaskCallBack;
  AddTask({this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    String newTaskText;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff757575),
        border: Border.all(color: Color(0xff757575)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskText = newText;
              },
            ),
            SizedBox(height: 15.0,),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                addTaskCallBack(newTaskText);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
